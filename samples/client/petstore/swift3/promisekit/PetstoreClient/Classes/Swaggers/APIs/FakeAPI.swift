//
// FakeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire
import PromiseKit



open class FakeAPI: APIBase {
    /**
     To test \"client\" model
     
     - parameter body: (body) client model 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func testClientModel(body: Client, completion: @escaping ((_ data: Client?,_ error: ErrorResponse?) -> Void)) {
        testClientModelWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }

    /**
     To test \"client\" model
     
     - parameter body: (body) client model 
     - returns: Promise<Client>
     */
    open class func testClientModel( body: Client) -> Promise<Client> {
        let deferred = Promise<Client>.pending()
        testClientModel(body: body) { data, error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill(data!)
            }
        }
        return deferred.promise
    }

    /**
     To test \"client\" model
     - PATCH /fake
     - To test \"client\" model
     - examples: [{contentType=application/json, example={
  "client" : "aeiou"
}}]
     
     - parameter body: (body) client model 

     - returns: RequestBuilder<Client> 
     */
    open class func testClientModelWithRequestBuilder(body: Client) -> RequestBuilder<Client> {
        let path = "/fake"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Client>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
     
     - parameter number: (form) None 
     - parameter double: (form) None 
     - parameter patternWithoutDelimiter: (form) None 
     - parameter byte: (form) None 
     - parameter integer: (form) None (optional)
     - parameter int32: (form) None (optional)
     - parameter int64: (form) None (optional)
     - parameter float: (form) None (optional)
     - parameter string: (form) None (optional)
     - parameter binary: (form) None (optional)
     - parameter date: (form) None (optional)
     - parameter dateTime: (form) None (optional)
     - parameter password: (form) None (optional)
     - parameter callback: (form) None (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func testEndpointParameters(number: Double, double: Double, patternWithoutDelimiter: String, byte: Data, integer: Int32? = nil, int32: Int32? = nil, int64: Int64? = nil, float: Float? = nil, string: String? = nil, binary: Data? = nil, date: ISOFullDate? = nil, dateTime: Date? = nil, password: String? = nil, callback: String? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        testEndpointParametersWithRequestBuilder(number: number, double: double, patternWithoutDelimiter: patternWithoutDelimiter, byte: byte, integer: integer, int32: int32, int64: int64, float: float, string: string, binary: binary, date: date, dateTime: dateTime, password: password, callback: callback).execute { (response, error) -> Void in
            completion(error);
        }
    }

    /**
     Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
     
     - parameter number: (form) None 
     - parameter double: (form) None 
     - parameter patternWithoutDelimiter: (form) None 
     - parameter byte: (form) None 
     - parameter integer: (form) None (optional)
     - parameter int32: (form) None (optional)
     - parameter int64: (form) None (optional)
     - parameter float: (form) None (optional)
     - parameter string: (form) None (optional)
     - parameter binary: (form) None (optional)
     - parameter date: (form) None (optional)
     - parameter dateTime: (form) None (optional)
     - parameter password: (form) None (optional)
     - parameter callback: (form) None (optional)
     - returns: Promise<Void>
     */
    open class func testEndpointParameters( number: Double,  double: Double,  patternWithoutDelimiter: String,  byte: Data,  integer: Int32? = nil,  int32: Int32? = nil,  int64: Int64? = nil,  float: Float? = nil,  string: String? = nil,  binary: Data? = nil,  date: ISOFullDate? = nil,  dateTime: Date? = nil,  password: String? = nil,  callback: String? = nil) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        testEndpointParameters(number: number, double: double, patternWithoutDelimiter: patternWithoutDelimiter, byte: byte, integer: integer, int32: int32, int64: int64, float: float, string: string, binary: binary, date: date, dateTime: dateTime, password: password, callback: callback) { error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill()
            }
        }
        return deferred.promise
    }

    /**
     Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
     - POST /fake
     - Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
     - BASIC:
       - type: basic
       - name: http_basic_test
     
     - parameter number: (form) None 
     - parameter double: (form) None 
     - parameter patternWithoutDelimiter: (form) None 
     - parameter byte: (form) None 
     - parameter integer: (form) None (optional)
     - parameter int32: (form) None (optional)
     - parameter int64: (form) None (optional)
     - parameter float: (form) None (optional)
     - parameter string: (form) None (optional)
     - parameter binary: (form) None (optional)
     - parameter date: (form) None (optional)
     - parameter dateTime: (form) None (optional)
     - parameter password: (form) None (optional)
     - parameter callback: (form) None (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func testEndpointParametersWithRequestBuilder(number: Double, double: Double, patternWithoutDelimiter: String, byte: Data, integer: Int32? = nil, int32: Int32? = nil, int64: Int64? = nil, float: Float? = nil, string: String? = nil, binary: Data? = nil, date: ISOFullDate? = nil, dateTime: Date? = nil, password: String? = nil, callback: String? = nil) -> RequestBuilder<Void> {
        let path = "/fake"
        let URLString = PetstoreClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "integer": integer?.encodeToJSON(),
            "int32": int32?.encodeToJSON(),
            "int64": int64?.encodeToJSON(),
            "number": number,
            "float": float,
            "double": double,
            "string": string,
            "pattern_without_delimiter": patternWithoutDelimiter,
            "byte": byte,
            "binary": binary,
            "date": date?.encodeToJSON(),
            "dateTime": dateTime?.encodeToJSON(),
            "password": password,
            "callback": callback
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter enumFormStringArray
     */
    public enum EnumFormStringArray_testEnumParameters: String { 
        case greaterThan = ">"
        case dollar = "$"
    }

    /**
     * enum for parameter enumFormString
     */
    public enum EnumFormString_testEnumParameters: String { 
        case abc = "_abc"
        case efg = "-efg"
        case xyz = "(xyz)"
    }

    /**
     * enum for parameter enumHeaderStringArray
     */
    public enum EnumHeaderStringArray_testEnumParameters: String { 
        case greaterThan = ">"
        case dollar = "$"
    }

    /**
     * enum for parameter enumHeaderString
     */
    public enum EnumHeaderString_testEnumParameters: String { 
        case abc = "_abc"
        case efg = "-efg"
        case xyz = "(xyz)"
    }

    /**
     * enum for parameter enumQueryStringArray
     */
    public enum EnumQueryStringArray_testEnumParameters: String { 
        case greaterThan = ">"
        case dollar = "$"
    }

    /**
     * enum for parameter enumQueryString
     */
    public enum EnumQueryString_testEnumParameters: String { 
        case abc = "_abc"
        case efg = "-efg"
        case xyz = "(xyz)"
    }

    /**
     * enum for parameter enumQueryInteger
     */
    public enum EnumQueryInteger_testEnumParameters: Int32 { 
        case number1 = 1
        case numberminus2 = -2
    }

    /**
     * enum for parameter enumQueryDouble
     */
    public enum EnumQueryDouble_testEnumParameters: Double { 
        case number11 = 1.1
        case numberminus12 = -1.2
    }

    /**
     To test enum parameters
     
     - parameter enumFormStringArray: (form) Form parameter enum test (string array) (optional)
     - parameter enumFormString: (form) Form parameter enum test (string) (optional, default to -efg)
     - parameter enumHeaderStringArray: (header) Header parameter enum test (string array) (optional)
     - parameter enumHeaderString: (header) Header parameter enum test (string) (optional, default to -efg)
     - parameter enumQueryStringArray: (query) Query parameter enum test (string array) (optional)
     - parameter enumQueryString: (query) Query parameter enum test (string) (optional, default to -efg)
     - parameter enumQueryInteger: (query) Query parameter enum test (double) (optional)
     - parameter enumQueryDouble: (form) Query parameter enum test (double) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func testEnumParameters(enumFormStringArray: [String]? = nil, enumFormString: EnumFormString_testEnumParameters? = nil, enumHeaderStringArray: [String]? = nil, enumHeaderString: EnumHeaderString_testEnumParameters? = nil, enumQueryStringArray: [String]? = nil, enumQueryString: EnumQueryString_testEnumParameters? = nil, enumQueryInteger: EnumQueryInteger_testEnumParameters? = nil, enumQueryDouble: EnumQueryDouble_testEnumParameters? = nil, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        testEnumParametersWithRequestBuilder(enumFormStringArray: enumFormStringArray, enumFormString: enumFormString, enumHeaderStringArray: enumHeaderStringArray, enumHeaderString: enumHeaderString, enumQueryStringArray: enumQueryStringArray, enumQueryString: enumQueryString, enumQueryInteger: enumQueryInteger, enumQueryDouble: enumQueryDouble).execute { (response, error) -> Void in
            completion(error);
        }
    }

    /**
     To test enum parameters
     
     - parameter enumFormStringArray: (form) Form parameter enum test (string array) (optional)
     - parameter enumFormString: (form) Form parameter enum test (string) (optional, default to -efg)
     - parameter enumHeaderStringArray: (header) Header parameter enum test (string array) (optional)
     - parameter enumHeaderString: (header) Header parameter enum test (string) (optional, default to -efg)
     - parameter enumQueryStringArray: (query) Query parameter enum test (string array) (optional)
     - parameter enumQueryString: (query) Query parameter enum test (string) (optional, default to -efg)
     - parameter enumQueryInteger: (query) Query parameter enum test (double) (optional)
     - parameter enumQueryDouble: (form) Query parameter enum test (double) (optional)
     - returns: Promise<Void>
     */
    open class func testEnumParameters( enumFormStringArray: [String]? = nil,  enumFormString: EnumFormString_testEnumParameters? = nil,  enumHeaderStringArray: [String]? = nil,  enumHeaderString: EnumHeaderString_testEnumParameters? = nil,  enumQueryStringArray: [String]? = nil,  enumQueryString: EnumQueryString_testEnumParameters? = nil,  enumQueryInteger: EnumQueryInteger_testEnumParameters? = nil,  enumQueryDouble: EnumQueryDouble_testEnumParameters? = nil) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        testEnumParameters(enumFormStringArray: enumFormStringArray, enumFormString: enumFormString, enumHeaderStringArray: enumHeaderStringArray, enumHeaderString: enumHeaderString, enumQueryStringArray: enumQueryStringArray, enumQueryString: enumQueryString, enumQueryInteger: enumQueryInteger, enumQueryDouble: enumQueryDouble) { error in
            if let error = error {
                deferred.reject(error)
            } else {
                deferred.fulfill()
            }
        }
        return deferred.promise
    }

    /**
     To test enum parameters
     - GET /fake
     - To test enum parameters
     
     - parameter enumFormStringArray: (form) Form parameter enum test (string array) (optional)
     - parameter enumFormString: (form) Form parameter enum test (string) (optional, default to -efg)
     - parameter enumHeaderStringArray: (header) Header parameter enum test (string array) (optional)
     - parameter enumHeaderString: (header) Header parameter enum test (string) (optional, default to -efg)
     - parameter enumQueryStringArray: (query) Query parameter enum test (string array) (optional)
     - parameter enumQueryString: (query) Query parameter enum test (string) (optional, default to -efg)
     - parameter enumQueryInteger: (query) Query parameter enum test (double) (optional)
     - parameter enumQueryDouble: (form) Query parameter enum test (double) (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func testEnumParametersWithRequestBuilder(enumFormStringArray: [String]? = nil, enumFormString: EnumFormString_testEnumParameters? = nil, enumHeaderStringArray: [String]? = nil, enumHeaderString: EnumHeaderString_testEnumParameters? = nil, enumQueryStringArray: [String]? = nil, enumQueryString: EnumQueryString_testEnumParameters? = nil, enumQueryInteger: EnumQueryInteger_testEnumParameters? = nil, enumQueryDouble: EnumQueryDouble_testEnumParameters? = nil) -> RequestBuilder<Void> {
        let path = "/fake"
        let URLString = PetstoreClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "enum_form_string_array": enumFormStringArray,
            "enum_form_string": enumFormString?.rawValue,
            "enum_query_double": enumQueryDouble?.rawValue
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "enum_query_string_array": enumQueryStringArray, 
            "enum_query_string": enumQueryString?.rawValue, 
            "enum_query_integer": enumQueryInteger?.encodeToJSON()?.rawValue
        ])
        
        let nillableHeaders: [String: Any?] = [
            "enum_header_string_array": enumHeaderStringArray,
            "enum_header_string": enumHeaderString?.rawValue
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

}
