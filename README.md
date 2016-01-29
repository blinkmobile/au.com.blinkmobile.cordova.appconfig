<!--
# license: Licensed to the Apache Software Foundation (ASF) under one
#         or more contributor license agreements.  See the NOTICE file
#         distributed with this work for additional information
#         regarding copyright ownership.  The ASF licenses this file
#         to you under the Apache License, Version 2.0 (the
#         "License"); you may not use this file except in compliance
#         with the License.  You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#         Unless required by applicable law or agreed to in writing,
#         software distributed under the License is distributed on an
#         "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
#         KIND, either express or implied.  See the License for the
#         specific language governing permissions and limitations
#         under the License.
-->

# cordova-plugin-airwatch-ace

This plugin defines a global `airwatch-ace` object, which describes the Airwatch MDM Configuration.
Although the object is in the global scope, it is not available until after the `deviceready` event.

    document.addEventListener("deviceready", onDeviceReady, false);
    function onDeviceReady() {
        console.log(device.cordova);
    }

:warning: Report issues on the [Github Issue Tracker](https://github.com/coaic/cordova-plugin-airwatch-ace/issues)


## Installation

    cordova plugin add cordova-plugin-airwatch-ace

## Properties

- airwatch-ace.xxxx


### Supported Platforms

- iOS


### Quick Example

    // iOS:     for the provisioned device returns .....

## airwatch-ace.isVirtual

whether the device is running on a simulator.

    var isSim = airwatch-ace.isVirtual;

