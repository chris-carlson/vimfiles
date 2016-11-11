" HTML5 tag names
syn keyword htmlTagName contained section template

" Angular Material 2 tag names
syn keyword htmlTagName contained md-card md-card-title md-card-subtitle md-card-content md-card-image md-card-actions md-card-footer md-checkbox md-radio-group md-radio-button md-input md-textarea md-sidenav-layout md-sidenav md-toolbar md-list md-list-item md-line md-list-avatar md-subheader md-divider md-nav-list md-icon md-grid-list md-grid-tile md-progress-circle md-progress-bar md-tab-group md-tab md-slide-toggle md-button-toggle-group md-button-toggle md-slider md-menu md-ripple

" Match new tag names
syn match htmlTagName contained "\<[a-z_]\([a-z0-9_.]\+\)\?\(\-[a-z0-9_.]\+\)\+\>"

" HTML5 attribute names
syn keyword htmlArg contained mode label step placeholder

" Angular Material 2 attributes
syn keyword htmlArg contained md-flat-button md-raised-button dense md-menu-item md-icon-button md-menu-trigger-for md-tooltip tooltip-position md-ripple-trigger md-ripple-color md-ripple-background-color md-ripple-centered md-ripple-max-radius md-ripple-unbounded md-ripple-focused md-ripple-disabled formGroup formControl ngSubmit ngIf ngFor

" Match new attribute names
syn match htmlArg "\<\(data\-\([a-z_][a-z0-9_.\-]*\)\+\)\=\>" contained
syn match htmlArg "\<\(md\-\([a-z_][a-z0-9_.\-]*\)\+\)\=\>" contained
