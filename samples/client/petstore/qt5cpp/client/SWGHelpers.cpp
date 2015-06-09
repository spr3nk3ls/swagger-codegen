#include "SWGHelpers.h"
#include "SWGModelFactory.h"
#include "SWGObject.h"
#import <QDebug>
#import <QJsonArray>
#import <QJsonValue>

namespace Swagger {

void
setValue(void* value, QJsonValue obj, QString type, QString complexType) {
    if(value == NULL) {
        // can't set value with a null pointer
        return;
    }
    if(QStringLiteral("bool").compare(type) == 0) {
        bool * val = static_cast<bool*>(value);
        *val = obj.toBool();
    }
    else if(QStringLiteral("qint32").compare(type) == 0) {
        qint32 *val = static_cast<qint32*>(value);
        *val = obj.toInt();
    }
    else if(QStringLiteral("qint64").compare(type) == 0) {
        qint64 *val = static_cast<qint64*>(value);
        *val = obj.toVariant().toLongLong();
    }
    else if (QStringLiteral("QString").compare(type) == 0) {
        QString **val = static_cast<QString**>(value);

        if(val != NULL) {
            if(!obj.isNull()) {
                // create a new value and return
                delete *val;
                *val = new QString(obj.toString());
                return;
            }
            else {
                // set target to NULL
                delete *val;
                *val = NULL;
            }
        }
        else {
            qDebug() << "Can't set value because the target pointer is NULL";
        }
    }
    else if(type.startsWith("SWG") && obj.isObject()) {
        // complex type
        QJsonObject jsonObj = obj.toObject();
        SWGObject * so = (SWGObject*)Swagger::create(type);
        if(so != NULL) {
            so->fromJsonObject(jsonObj);
            SWGObject **val = static_cast<SWGObject**>(value);
            delete *val;
            *val = so;
        }
    }
    else if(type.startsWith("QList") && QString("").compare(complexType) != 0 && obj.isArray()) {
        // list of values
        QList<void*>* output = new QList<void*>();
        QJsonArray arr = obj.toArray();
        foreach (const QJsonValue & jval, arr) {
            if(complexType.startsWith("SWG")) {
                // it's an object
                SWGObject * val = (SWGObject*)create(complexType);
                QJsonObject t = jval.toObject();

                val->fromJsonObject(t);
                output->append(val);
            }
            else {
                // primitives
                if(QStringLiteral("qint32").compare(complexType) == 0) {
                    qint32 val;
                    setValue(&val, jval, QStringLiteral("qint32"), QStringLiteral(""));
                    output->append((void*)&val);
                }
                else if(QStringLiteral("qint64").compare(complexType) == 0) {
                    qint64 val;
                    setValue(&val, jval, QStringLiteral("qint64"), QStringLiteral(""));
                    output->append((void*)&val);
                }
                else if(QStringLiteral("bool").compare(complexType) == 0) {
                    bool val;
                    setValue(&val, jval, QStringLiteral("bool"), QStringLiteral(""));
                    output->append((void*)&val);
                }
            }
        }
        QList<void*> **val = static_cast<QList<void*>**>(value);
        delete *val;
        *val = output;
    }
}

void
toJsonValue(QString name, void* value, QJsonObject* output, QString type) {
    if(value == NULL) {
        return;
    }
    if(type.startsWith("SWG")) {
        SWGObject *swgObject = reinterpret_cast<SWGObject *>(value);
        if(swgObject != NULL) {
            QJsonObject* o = (*swgObject).asJsonObject();
            if(name != NULL) {
                output->insert(name, *o);
                delete o;
            }
            else {
                output->empty();
                foreach(QString key, o->keys()) {
                    output->insert(key, o->value(key));
                }
            }
        }
    }
    else if(QStringLiteral("QString").compare(type) == 0) {
        QString* str = static_cast<QString*>(value);
        output->insert(name, QJsonValue(*str));
    }
    else if(QStringLiteral("qint32").compare(type) == 0) {
        qint32* str = static_cast<qint32*>(value);
        output->insert(name, QJsonValue(*str));    
    }
    else if(QStringLiteral("qint64").compare(type) == 0) {
        qint64* str = static_cast<qint64*>(value);
        output->insert(name, QJsonValue(*str));    
    }
    else if(QStringLiteral("bool").compare(type) == 0) {
        bool* str = static_cast<bool*>(value);
        output->insert(name, QJsonValue(*str));    
    }
}

void
toJsonArray(QList<void*>* value, QJsonArray* output, QString innerName, QString innerType) {
    foreach(void* obj, *value) {
        QJsonObject element;

        toJsonValue(NULL, obj, &element, innerType);
        output->append(element);
    }
}

QString
stringValue(QString* value) {
    QString* str = static_cast<QString*>(value);
    return QString(*str);
}

QString
stringValue(qint32 value) {
    return QString::number(value);
}

QString
stringValue(qint64 value) {
    return QString::number(value);
}

QString
stringValue(bool value) {
    return QString(value ? "true" : "false");
}
} /* namespace Swagger */
