## Licensed to Cloudera, Inc. under one
## or more contributor license agreements.  See the NOTICE file
## distributed with this work for additional information
## regarding copyright ownership.  Cloudera, Inc. licenses this file
## to you under the Apache License, Version 2.0 (the
## "License"); you may not use this file except in compliance
## with the License.  You may obtain a copy of the License at
##
##     http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.
<%!
  from desktop.views import commonheader, commonfooter
  from desktop import conf
  from django.utils.translation import ugettext as _
%>

<%namespace name="assist" file="/assist.mako" />
<%namespace name="configKoComponents" file="/config_ko_components.mako" />
<%namespace name="editorComponents" file="editor_components.mako" />
<%namespace name="notebookKoComponents" file="/common_notebook_ko_components.mako" />
<%namespace name="hueAceAutocompleter" file="hue_ace_autocompleter.mako" />

<span id="editorComponents" class="editorComponents notebook">
${ editorComponents.includes(is_embeddable=True) }

<style type="text/css">
  .snippet {
    margin-right: 10px;
  }
</style>

${ editorComponents.topBar() }
${ editorComponents.commonHTML(with_assist='false') }

${ configKoComponents.config() }
${ notebookKoComponents.aceKeyboardShortcuts() }
${ notebookKoComponents.downloadSnippetResults() }
${ hueAceAutocompleter.hueAceAutocompleter() }

${ editorComponents.commonJS(is_embeddable=True) }

</span>
