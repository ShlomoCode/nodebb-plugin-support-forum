'use strict';

import { save, load } from 'settings';

export function init() {
	handleSettingsForm();
};

function handleSettingsForm() {
	load('support-forum', $('.support-forum-settings'));

	$('#save').on('click', () => {
		save('support-forum', $('.support-forum-settings'));
	});
}
