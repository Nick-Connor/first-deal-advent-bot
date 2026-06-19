'use strict';

/**
 * stats-event service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::stats-event.stats-event');
