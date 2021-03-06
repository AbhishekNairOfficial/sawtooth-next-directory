#!/bin/bash
# Copyright 2018 by Blockchain Technology Partners
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Set the server hostname for the prod environment
if [ "${HOST}" ] ; then
    sed -i "s/localhost/${HOST}/g" src/environments/environment.prod.ts
    sed -i "s/localhost/${HOST}/g" protractor.conf.js
fi

npm start -- --env=prod --host=0.0.0.0 --port=4200
