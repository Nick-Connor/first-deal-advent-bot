'use strict';

/**
 * advent-cell service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::advent-cell.advent-cell');
