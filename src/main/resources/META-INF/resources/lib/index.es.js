import Vue from 'vue/dist/vue.common';
import axios from 'axios';
import constants from './constants';

export default function(portletNamespace) {


	new Vue({
		el: `#${portletNamespace}-2`,
		data: {
		    source: '',
		    medium: '',
		    name: '',
		    term: '',
		    content: '',
		    info: '',
		    list2: ''
		},
                 computed: {
                     currentUrl: function () {
                         return Liferay.ThemeDisplay.getLayoutURL()
                     }
                 },
                    mounted () {
                      axios
                        .get(constants.SOURCE_ENDPOINT,
                            {
                              headers: {
                                'x-csrf-token': Liferay.authToken
                              }
                            })
                        .then(response => (this.info = response)),
                      axios
                        .get(constants.MEDIUM_ENDPOINT,
                        {
                          headers: {
                            'x-csrf-token': Liferay.authToken
                          }
                        })
                        .then(response => (this.list2 = response))
                    }
	});
}