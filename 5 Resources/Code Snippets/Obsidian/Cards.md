---
tags:
  - resources
zero-links: "[[02 Obsidian]]"
---
- Сниппет для потрясного вида карточек в dataview таблицах. 
- Использую в книжном трекере
- cssclasses указать - cards, cards-1-1,cards-cols-4, cards-cover, table-max


```css
.cards table.dataview {
  --table-width: 100%;
  --table-min-width: none;
}

body {
  --table-drag-space: 16px;
  --container-table-margin: calc(var(--content-margin-start) - var(--table-drag-space));
  --container-table-width: calc(var(--line-width) + var(--table-drag-space)*2);
  --table-drag-padding: var(--table-drag-space);
}

.is-mobile {
  --table-drag-space: 16px;
  --container-table-max-width: calc(100% - var(--container-table-margin));
}

.maximize-tables-auto {
  --container-table-max-width: 100%;
  --container-table-width: 100%;
  --container-dataview-table-width: 100%;
  --container-table-margin: 0;
  --table-drag-padding: var(--table-drag-space) 0;
  --table-max-width: 100%;
  --table-margin: var(--content-margin-start) auto;
  --table-width: auto;
}
.maximize-tables-auto .cards {
  --container-table-max-width: var(--max-width);
}
.maximize-tables-auto .cards .block-language-dataview {
  --table-margin: auto;
}

.maximize-tables {
  --container-table-max-width: 100%;
  --container-table-width: 100%;
  --container-table-margin: 0;
  --table-drag-padding: var(--table-drag-space) 0;
  --table-min-width: min(var(--line-width), var(--max-width));
  --table-max-width: 100%;
  --table-margin: auto;
  --table-width: auto;
  --table-edge-cell-padding-first: 8px;
  --table-edge-cell-padding-last: 8px;
  --table-wrapper-width: auto;
}

.bases-view[data-view-type=table] {
  --bases-embed-border-width: var(--bases-table-embed-border-width);
}

.bases-view[data-view-type=cards] {
  padding: var(--bases-cards-embed-padding);
}

.table-wide,
.table-max,
.table-100 {
  --table-max-width: 100%;
  --table-width: 100%;
}

.table-wide {
  --container-table-width: var(--line-width-wide);
  --container-dataview-table-width: var(--line-width-wide);
  --container-table-margin: auto;
  --table-edge-cell-padding-first: 0px;
}

.table-max {
  --container-table-width: var(--max-width);
  --container-table-max-width: calc(var(--max-width) + var(--table-drag-space)*2);
  --container-dataview-table-width: var(--max-width);
  --container-table-margin: auto;
  --table-edge-cell-padding-first: 0px;
  --table-margin: 0;
}

.table-100 {
  --container-table-width: 100%;
  --container-dataview-table-width: 100%;
  --container-table-max-width: 100%;
  --container-table-margin: 0;
  --table-edge-cell-padding-first: 16px;
  --table-edge-cell-padding-last: 16px;
  --table-margin: 0;
  --table-drag-padding: var(--table-drag-space) 0;
  --table-wrapper-width: min(fit-content, 100%);
  --bases-embed-border-width: 0;
  --bases-table-embed-border-width: 0;
  --bases-cards-embed-padding: 0 128px;
  --bases-header-padding-end: var(--size-4-2);
  --bases-header-padding-start: var(--size-4-2);
  /* Place drag handles inside the cell when width is 100% */
}
.table-100 .table-col-btn {
  cursor: default !important;
  margin-top: 8px;
  height: var(--table-header-size);
  inset-inline-start: calc(100% - var(--table-drag-handle-size) - 4px) !important;
}
.table-100 .markdown-source-view.mod-cm6, .table-100.markdown-source-view.mod-cm6 {
  --table-drag-handle-background-active: transparent;
}
.table-100 .markdown-source-view.mod-cm6 .cm-table-widget .table-row-drag-handle, .table-100.markdown-source-view.mod-cm6 .cm-table-widget .table-row-drag-handle {
  inset-inline-end: calc(100% - var(--table-drag-handle-size)) !important;
}

.img-wide,
.img-max,
.img-100 {
  --img-max-width: 100%;
  --img-width: 100%;
}

.img-wide {
  --container-img-width: var(--line-width-wide);
  --img-line-width: var(--line-width-wide);
  --img-margin-start: calc(50% - var(--line-width-wide)/2);
}

.img-max {
  --container-img-width: var(--max-width);
  --img-line-width: var(--max-width);
  --img-margin-start: calc(50% - var(--max-width)/2);
}

.img-100 {
  --container-img-width: 100%;
  --container-img-max-width: 100%;
  --img-line-width: 100%;
  --img-margin-start:0;
}

.map-wide,
.map-max,
.map-100 {
  --map-max-width: 100%;
  --map-width: 100%;
}

.map-wide {
  --container-map-width: var(--line-width-wide);
}

.map-max {
  --container-map-width: var(--max-width);
}

.map-100 {
  --container-map-width: 100%;
  --container-map-max-width: 100%;
}

.chart-wide,
.chart-max,
.chart-100 {
  --chart-max-width: 100%;
  --chart-width: 100%;
}

.chart-wide {
  --container-chart-width: var(--line-width-wide);
}

.chart-max {
  --container-chart-width: var(--max-width);
}

.chart-100 {
  --container-chart-width: 100%;
  --container-chart-max-width: 100%;
}

.iframe-wide,
.iframe-max,
.iframe-100 {
  --iframe-max-width: 100%;
  --iframe-width: 100%;
}

.iframe-wide {
  --container-iframe-width: var(--line-width-wide);
}

.iframe-max {
  --container-iframe-width: var(--max-width);
}

.iframe-100 {
  --container-iframe-width: 100%;
  --container-iframe-max-width: 100%;
}

/* Block widths ------------------------------------

   Because we are using :has() this method requires
   Obsidian installer 1.1.9 or above. However it means the
   code no longer requires Contextual Typography plugin.
*/
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content,
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer {
  /* Tables */
  /* Images */
  /* External images */
  /* Charts */
  /* Maps */
  /* Iframes */
}
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content .cm-table-widget,
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content > div:has(table),
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer .cm-table-widget,
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer > div:has(table) {
  width: var(--container-table-width);
  max-width: var(--container-table-max-width);
  margin-inline: var(--container-table-margin) !important;
  padding-inline-start: var(--table-drag-padding);
}
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content .el-table,
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer .el-table {
  margin-inline: var(--container-table-margin) !important;
  padding-inline-start: var(--table-drag-padding);
}
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content .table-wrapper,
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer .table-wrapper {
  width: var(--table-wrapper-width);
}
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content > .bases-embed,
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content > div:has(.block-language-base),
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content > div:has(.bases-embed),
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content > :has(> .block-language-dataview table),
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content > :has(> .block-language-dataviewjs table),
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer > .bases-embed,
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer > div:has(.block-language-base),
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer > div:has(.bases-embed),
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer > :has(> .block-language-dataview table),
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer > :has(> .block-language-dataviewjs table) {
  width: var(--container-dataview-table-width);
  max-width: var(--container-table-max-width);
}
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content table,
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer table {
  width: var(--table-width);
  max-width: var(--table-max-width);
  margin-inline: var(--table-margin);
  min-width: var(--table-min-width);
}
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content .block-language-dataviewjs > :is(p, h1, h2, h3, h4, h5, h6),
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer .block-language-dataviewjs > :is(p, h1, h2, h3, h4, h5, h6) {
  width: var(--line-width);
  margin-inline: var(--content-margin);
}
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content .block-language-dataviewjs > .dataview-error,
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer .block-language-dataviewjs > .dataview-error {
  margin: 0 auto;
  width: var(--content-line-width);
}
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content .dataview.dataview-error-box,
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer .dataview.dataview-error-box {
  margin-inline: var(--table-margin);
}
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content > .image-embed,
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer > .image-embed {
  padding-top: 0.25rem;
  padding-bottom: 0.25rem;
}
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content > .image-embed,
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content > div:has(.image-embed),
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer > .image-embed,
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer > div:has(.image-embed) {
  width: var(--container-img-width);
  max-width: var(--container-img-max-width);
}
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content > .image-embed img,
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content > div:has(.image-embed) img,
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer > .image-embed img,
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer > div:has(.image-embed) img {
  max-width: var(--img-max-width);
}
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content > img,
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer > img {
  max-width: var(--img-line-width);
  margin-inline-start: var(--img-margin-start) !important;
}
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content div:has(> .block-language-dataviewjs canvas, > .block-language-chart),
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer div:has(> .block-language-dataviewjs canvas, > .block-language-chart) {
  width: var(--container-chart-width);
  max-width: var(--container-chart-max-width);
}
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content div:has(> .block-language-dataviewjs canvas, > .block-language-chart) canvas,
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer div:has(> .block-language-dataviewjs canvas, > .block-language-chart) canvas {
  max-width: var(--chart-max-width);
}
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content div:has(> .block-language-leaflet),
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer div:has(> .block-language-leaflet) {
  width: var(--container-map-width);
  max-width: var(--container-map-max-width);
}
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content div:has(> .block-language-leaflet) iframe,
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer div:has(> .block-language-leaflet) iframe {
  max-width: var(--map-max-width);
}
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content > div:has(> iframe),
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content div:has(> .cm-html-embed),
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer > div:has(> iframe),
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer div:has(> .cm-html-embed) {
  width: var(--container-iframe-width);
  max-width: var(--container-iframe-max-width);
}
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content > div:has(> iframe) iframe,
.markdown-source-view.mod-cm6.is-readable-line-width .cm-contentContainer.cm-contentContainer > .cm-content div:has(> .cm-html-embed) iframe,
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer > div:has(> iframe) iframe,
.markdown-preview-view.is-readable-line-width .markdown-preview-sizer div:has(> .cm-html-embed) iframe {
  max-width: var(--iframe-max-width);
}

.borders-none {
  --divider-width:0px;
  --tab-outline-width: 0px;
}

body:is(.borders-none) .mod-root .workspace-tab-header-container:is(div, :hover) {
  --tab-outline-width: 0px;
}

/* MIT License | Copyright (c) Stephan Ango (@kepano) 

Cards snippet for Obsidian

author: @kepano
version: 3.0.1

Support my work:
https://github.com/sponsors/kepano

*/
body {
  --cards-min-width: 180px;
  --cards-max-width: 1fr;
  --cards-mobile-width: 120px;
  --cards-image-height: 400px;
  --cards-padding: 1.2em;
  --cards-image-fit: contain;
  --cards-background: transparent;
  --cards-background-hover: transparent;
  --cards-border-width: 1px;
  --cards-aspect-ratio: auto;
  --cards-columns: repeat(auto-fit, minmax(var(--cards-min-width), var(--cards-max-width)));
}

@media (max-width: 400pt) {
  body {
    --cards-min-width:var(--cards-mobile-width);
  }
}
.cards.table-100 table.dataview tbody,
.table-100 .cards table.dataview tbody {
  padding: 0.25rem 0.75rem;
}

.cards table.dataview {
  --table-width: 100%;
  --table-edge-cell-padding-first: calc(var(--cards-padding)/2);
  --table-edge-cell-padding-last: calc(var(--cards-padding)/2);
  --table-cell-padding: calc(var(--cards-padding)/3) calc(var(--cards-padding)/2);
  line-height: 1.3;
}
.cards table.dataview tbody {
  clear: both;
  padding: 0.5rem 0;
  display: grid;
  grid-template-columns: var(--cards-columns);
  grid-column-gap: 0.75rem;
  grid-row-gap: 0.75rem;
}
.cards table.dataview > tbody > tr {
  background-color: var(--cards-background);
  border: var(--cards-border-width) solid var(--background-modifier-border);
  display: flex;
  flex-direction: column;
  margin: 0;
  padding: 0 0 calc(var(--cards-padding) / 3) 0;
  border-radius: 6px;
  overflow: hidden;
  transition: box-shadow 0.15s linear;
  max-width: var(--cards-max-width);
  height: auto;
}
.cards table.dataview > tbody > tr:hover {
  background-color: var(--cards-background-hover) !important;
  border: var(--cards-border-width) solid var(--background-modifier-border-hover);
  box-shadow: 0 4px 6px 0px rgba(0, 0, 0, 0.05), 0 1px 3px 1px rgba(0, 0, 0, 0.025);
  transition: box-shadow 0.15s linear;
}
.cards table.dataview tbody > tr > td {
  /* Paragraphs */
  /* Links */
  /* Buttons */
  /* Lists */
}
.cards table.dataview tbody > tr > td:first-child {
  font-weight: var(--bold-weight);
  border: none;
}
.cards table.dataview tbody > tr > td:first-child a {
  display: block;
}
.cards table.dataview tbody > tr > td:last-child {
  border: none;
}
.cards table.dataview tbody > tr > td:not(:first-child) {
  font-size: calc(var(--table-text-size) * 0.9);
  color: var(--text-muted);
}
.cards table.dataview tbody > tr > td > * {
  padding: calc(var(--cards-padding) / 3) 0;
}
.cards table.dataview tbody > tr > td:not(:last-child):not(:first-child) {
  padding: 4px 0;
  border-bottom: 1px solid var(--background-modifier-border);
  width: calc(100% - var(--cards-padding));
  margin: 0 calc(var(--cards-padding) / 2);
}
.cards table.dataview tbody > tr > td a {
  text-decoration: none;
}
.cards table.dataview tbody > tr > td > button {
  width: 100%;
  margin: calc(var(--cards-padding) / 2) 0;
}
.cards table.dataview tbody > tr > td:last-child > button {
  margin-bottom: calc(var(--cards-padding) / 6);
}
.cards table.dataview tbody > tr > td > ul {
  width: 100%;
  padding: 0.25em 0 !important;
  margin: 0 auto !important;
}
.cards table.dataview tbody > tr > td img {
  aspect-ratio: var(--cards-aspect-ratio);
  width: 100%;
  object-fit: var(--cards-image-fit);
  max-height: var(--cards-image-height);
  background-color: var(--background-secondary);
  vertical-align: bottom;
}

.markdown-source-view.mod-cm6.cards .dataview.table-view-table > tbody > tr > td,
.trim-cols .cards table.dataview tbody > tr > td {
  white-space: normal;
}

.links-int-on .cards table {
  --link-decoration: none;
}

/* Block button */
.markdown-source-view.mod-cm6.cards .edit-block-button {
  top: -1px;
  right: 28px;
  opacity: 1;
}

/* ------------------- */
/* Sorting menu */
.cards.table-100 table.dataview thead > tr,
.table-100 .cards table.dataview thead > tr {
  right: 0.75rem;
}

.table-100 .cards table.dataview thead:before,
.cards.table-100 table.dataview thead:before {
  margin-right: 0.75rem;
}

.cards table.dataview thead {
  user-select: none;
  width: 180px;
  display: block;
  float: right;
  position: relative;
  text-align: right;
  height: 24px;
  padding-bottom: 0px;
}
.cards table.dataview thead:hover:after {
  background-color: var(--background-modifier-hover);
}
.cards table.dataview thead:hover:before {
  background-color: var(--text-muted);
}
.cards table.dataview thead:after,
.cards table.dataview thead:before {
  content: "";
  position: absolute;
  right: 0;
  top: 0;
  width: 10px;
  height: 16px;
  cursor: var(--cursor);
  text-align: right;
  padding: var(--size-4-1) var(--size-4-2);
  margin-bottom: 2px;
  border-radius: var(--radius-s);
  font-weight: 500;
  font-size: var(--font-adaptive-small);
}
.cards table.dataview thead:before {
  background-color: var(--text-faint);
  -webkit-mask-repeat: no-repeat;
  -webkit-mask-size: 16px;
  -webkit-mask-position: center center;
  -webkit-mask-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 100 100"><path fill="currentColor" d="M49.792 33.125l-5.892 5.892L33.333 28.45V83.333H25V28.45L14.438 39.017L8.542 33.125L29.167 12.5l20.625 20.625zm41.667 33.75L70.833 87.5l-20.625 -20.625l5.892 -5.892l10.571 10.567L66.667 16.667h8.333v54.883l10.567 -10.567l5.892 5.892z"></path></svg>');
}
.cards table.dataview thead > tr {
  top: -1px;
  position: absolute;
  display: none;
  z-index: 9;
  border: 1px solid var(--background-modifier-border-hover);
  background-color: var(--background-secondary);
  box-shadow: var(--shadow-s);
  padding: 6px;
  border-radius: var(--radius-m);
  flex-direction: column;
  margin: 24px 0 0 0;
  width: 100%;
}
.cards table.dataview thead:hover > tr {
  display: flex;
  height: auto;
}
.cards table.dataview thead > tr > th {
  display: block;
  padding: 3px 30px 3px 6px !important;
  border-radius: var(--radius-s);
  width: 100%;
  font-weight: 400;
  color: var(--text-normal);
  cursor: var(--cursor);
  border: none;
  font-size: var(--font-ui-small);
}
.cards table.dataview thead > tr > th[sortable-style=sortable-asc],
.cards table.dataview thead > tr > th[sortable-style=sortable-desc] {
  color: var(--text-normal);
}
.cards table.dataview thead > tr > th:hover {
  color: var(--text-normal);
  background-color: var(--background-modifier-hover);
}

/* ------------------- */
/* Card lists */
.list-cards.markdown-preview-view .list-bullet,
.list-cards.markdown-preview-view .list-collapse-indicator, .list-cards.markdown-preview-view.markdown-rendered.show-indentation-guide li > ul::before {
  display: none;
}
.list-cards.markdown-preview-view div > ul {
  display: grid;
  gap: 0.75rem;
  grid-template-columns: var(--cards-columns);
  padding: 0;
  line-height: var(--line-height-tight);
}
.list-cards.markdown-preview-view div > ul .contains-task-list {
  padding-inline-start: calc(var(--cards-padding) * 1.5);
}
.list-cards.markdown-preview-view div > ul > li.task-list-item > .task-list-item-checkbox {
  margin-inline-start: 3px;
}
.list-cards.markdown-preview-view div > ul > li {
  background-color: var(--cards-background);
  padding: calc(var(--cards-padding) / 2);
  border-radius: var(--radius-s);
  border: var(--cards-border-width) solid var(--background-modifier-border);
  overflow: hidden;
  margin-inline-start: 0;
}
.list-cards.markdown-preview-view div > ul .image-embed {
  padding: 0;
  display: block;
  background-color: var(--background-secondary);
  border-radius: var(--image-radius);
}
.list-cards.markdown-preview-view div > ul .image-embed img {
  aspect-ratio: var(--cards-aspect-ratio);
  object-fit: var(--cards-image-fit);
  max-height: var(--cards-image-height);
  background-color: var(--background-secondary);
  vertical-align: bottom;
}
.list-cards.markdown-preview-view div > ul > li > a {
  --link-decoration: none;
  --link-external-decoration: none;
  font-weight: var(--bold-weight);
}
.list-cards.markdown-preview-view div ul > li:hover {
  border-color: var(--background-modifier-border-hover);
}
.list-cards.markdown-preview-view div ul ul {
  display: block;
  width: 100%;
  color: var(--text-muted);
  font-size: var(--font-smallest);
  margin: calc(var(--cards-padding) / -4) 0;
  padding: calc(var(--cards-padding) / 2) 0;
}
.list-cards.markdown-preview-view div ul ul ul {
  padding-bottom: calc(var(--cards-padding) / 4);
}
.list-cards.markdown-preview-view div ul ul > li {
  display: block;
  margin-inline-start: 0;
}

/* ------------------- */
/* Helper classes */
.cards.cards-16-9,
.list-cards.cards-16-9 {
  --cards-aspect-ratio: 16/9;
}
.cards.cards-1-1,
.list-cards.cards-1-1 {
  --cards-aspect-ratio: 1/1;
}
.cards.cards-2-1,
.list-cards.cards-2-1 {
  --cards-aspect-ratio: 2/1;
}
.cards.cards-2-3,
.list-cards.cards-2-3 {
  --cards-aspect-ratio: 2/3;
}
.cards.cards-cols-1,
.list-cards.cards-cols-1 {
  --cards-columns: repeat(1, minmax(0, 1fr));
}
.cards.cards-cols-2,
.list-cards.cards-cols-2 {
  --cards-columns: repeat(2, minmax(0, 1fr));
}
.cards.cards-cover,
.list-cards.cards-cover {
  --cards-image-fit: cover;
  /* Images */
}
.cards.cards-cover tbody > tr > td:first-child,
.list-cards.cards-cover tbody > tr > td:first-child {
  padding: 0 !important;
  background-color: var(--background-secondary);
  display: block;
  margin: 0;
  width: 100%;
}
.cards.cards-cover tbody > tr > td:first-child img,
.list-cards.cards-cover tbody > tr > td:first-child img {
  border-radius: 0;
}
.cards.cards-align-bottom table.dataview tbody > tr > td:last-child,
.list-cards.cards-align-bottom table.dataview tbody > tr > td:last-child {
  margin-top: auto;
}

@media (max-width: 400pt) {
  .cards table.dataview tbody > tr > td:not(:first-child) {
    font-size: 80%;
  }
}
@media (min-width: 400pt) {
  .cards-cols-3 {
    --cards-columns: repeat(3, minmax(0, 1fr));
  }
  .cards-cols-4 {
    --cards-columns: repeat(4, minmax(0, 1fr));
  }
  .cards-cols-5 {
    --cards-columns: repeat(5, minmax(0, 1fr));
  }
  .cards-cols-6 {
    --cards-columns: repeat(6, minmax(0, 1fr));
  }
  .cards-cols-7 {
    --cards-columns: repeat(7, minmax(0, 1fr));
  }
  .cards-cols-8 {
    --cards-columns: repeat(8, minmax(0, 1fr));
  }
}
/* Checklist icons */
.cm-formatting.cm-formatting-task.cm-property {
  font-family: var(--font-monospace);
}

```