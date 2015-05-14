#!/usr/bin/env python
# coding: utf-8

"""
Copyright 2015 Reverb Technologies, Inc.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
"""

class Order(object):
    """
    NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually.
    """


    def __init__(self):
        """
        Swagger model

        :param dict swaggerTypes: The key is attribute name and the value is attribute type.
        :param dict attributeMap: The key is attribute name and the value is json key in definition.
        """
        self.swagger_types = {
            
            'id': 'int',
            
            
            'pet_id': 'int',
            
            
            'quantity': 'int',
            
            
            'ship_date': 'DateTime',
            
            
            'status': 'str',
            
            
            'complete': 'bool'
            
        }

        self.attribute_map = {
            
            'id': 'id',
            
            'pet_id': 'petId',
            
            'quantity': 'quantity',
            
            'ship_date': 'shipDate',
            
            'status': 'status',
            
            'complete': 'complete'
            
        }

        
        
        self.id = None # int
        
        
        self.pet_id = None # int
        
        
        self.quantity = None # int
        
        
        self.ship_date = None # DateTime
        
        #Order Status
        
        self.status = None # str
        
        
        self.complete = None # bool
        
