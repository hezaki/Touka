{ config, pkgs, ... }:
{
  home.packages = with pkgs; [ youtube-music ];
  xdg.configFile = {
    "YouTube Music/config.json".text = ''
      {
      	"window-size": {
      		"width": 1898,
      		"height": 1017
      	},
      	"window-maximized": false,
      	"window-position": {
      		"x": 11,
      		"y": 11
      	},
      	"url": "https://music.youtube.com/",
      	"options": {
      		"tray": false,
      		"appVisible": true,
      		"autoUpdates": true,
      		"alwaysOnTop": false,
      		"hideMenu": true,
      		"hideMenuWarned": true,
      		"startAtLogin": false,
      		"disableHardwareAcceleration": false,
      		"removeUpgradeButton": false,
      		"restartOnConfigChanges": false,
      		"trayClickPlayPause": false,
      		"autoResetAppCache": false,
      		"resumeOnStart": true,
      		"likeButtons": "",
      		"proxy": "",
      		"startingPage": "",
      		"overrideUserAgent": false,
      		"usePodcastParticipantAsArtist": false,
      		"themes": [
      			"/home/hezaki/.config/YouTube Music/style.css"
      		],
      		"language": "ru"
      	},
      	"plugins": {
      		"notifications": {
      			"enabled": true
      		},
      		"video-toggle": {
      			"mode": "custom"
      		},
      		"precise-volume": {
      			"globalShortcuts": {}
      		},
      		"discord": {
      			"listenAlong": true
      		},
      		"synced-lyrics": {
      			"enabled": false
      		},
      		"shortcuts": {
      			"enabled": true
      		},
      		"compact-sidebar": {
      			"enabled": true
      		},
      		"lyrics-genius": {
      			"enabled": true
      		},
      		"downloader": {
      			"enabled": true
      		},
      		"sponsorblock": {
      			"enabled": true
      		},
      		"exponential-volume": {
      			"enabled": false
      		},
      		"scrobbler": {
      			"enabled": true
      		},
      		"album-actions": {
      			"enabled": true
      		},
      		"bypass-age-restrictions": {
      			"enabled": true
      		}
      	},
      	"__internal__": {
      		"migrations": {
      			"version": "3.5.1"
      		}
      	}
      }
      	 '';
    "YouTube Music/style.css".text = ''
      html:not(.style-scope)
        { 
            --cust-ytmusic-play-nav-color: #${config.lib.stylix.colors.base00};
            --cust-ytmusic-dark-background: #${config.lib.stylix.colors.base00};
            --cust-ytmusic-dark-foreground: #${config.lib.stylix.colors.base00};

            --cust-ytmusic-light-text-1: #${config.lib.stylix.colors.base05};
            --cust-ytmusic-light-2: #${config.lib.stylix.colors.base06};
            --cust-ytmusic-light-3: #${config.lib.stylix.colors.base06};
            --cust-ytmusic-light-4: #${config.lib.stylix.colors.base06};
            --cust-ytmusic-light-5: #${config.lib.stylix.colors.base06};

            --cust-ytmusic-medium-1: #${config.lib.stylix.colors.base05};
            --cust-ytmusic-medium-2: #${config.lib.stylix.colors.base06};
            --cust-ytmusic-medium-3: #${config.lib.stylix.colors.base05};
            --cust-ytmusic-medium-4: #${config.lib.stylix.colors.base05};
            --cust-ytmusic-medium-5: #${config.lib.stylix.colors.base02};

            --cust-ytmusic-subscribe-color: #${config.lib.stylix.colors.base06};
            --cust-ytmusic-playbutton-color: #${config.lib.stylix.colors.base05};
            --cust-ytmusic-tertiary-nav-button-color: #${config.lib.stylix.colors.base05};
            --cust-ytmusic-nowplaying-color: #${config.lib.stylix.colors.base06};;

            --cust-ytmusic-main-text-1: #${config.lib.stylix.colors.base06};
            --cust-ytmusic-header-text-1: #${config.lib.stylix.colors.base06};
            --cust-ytmusic-header-text-2: #${config.lib.stylix.colors.base06};

            --cust-ytmusic-scroll-width: 0px;

      /*AGGRESSIVE AND INSENSITIVE USE OF !IMPORTANT so it works in the desktop app.
        some commenting was attempted as I went. */  

            --idk-yet: inherit !important;

            --ytmusic-color-black1: var(--cust-ytmusic-dark-foreground) !important;
            --ytmusic-color-black4: var(--cust-ytmusic-dark-background) !important;

            --ytmusic-color-blackpure: var(--idk-yet) !important;
            --ytmusic-color-blackpure-alpha0: var(--idk-yet) !important;
            --ytmusic-color-blackpure-alpha10: var(--idk-yet) !important;
            --ytmusic-color-blackpure-alpha60: var(--idk-yet) !important;

            --ytmusic-color-grey1: var(--cust-ytmusic-light-3) !important;
            --ytmusic-color-grey2: var(--cust-ytmusic-light-2) !important;
            --ytmusic-color-grey3: var(--cust-ytmusic-medium-4) !important;
            --ytmusic-color-grey4: var(--cust-ytmusic-light-4) !important;
            --ytmusic-color-grey5: var(--cust-ytmusic-medium-2) !important;

            --ytmusic-color-white1: var(--cust-ytmusic-light-text-1) !important;
            --ytmusic-color-white1-alpha10: var(--cust-ytmusic-light-4) !important;
            --ytmusic-color-white1-alpha15: var(--cust-ytmusic-light-4) !important;
            --ytmusic-color-white1-alpha20: var(--cust-ytmusic-light-4) !important;
            --ytmusic-color-white1-alpha30: var(--cust-ytmusic-light-4) !important;
            --ytmusic-color-white1-alpha50: var(--cust-ytmusic-light-4) !important;
            --ytmusic-color-white1-alpha70: var(--cust-ytmusic-medium-1) !important;

            --ytmusic-static-brand-red: var(--cust-ytmusic-light-text-1) !important;/*loadingbar*/

            --yt-spec-themed-blue: var(--cust-ytmusic-light-5) !important;
            --yt-spec-dark-blue: var(--cust-ytmusic-medium-5) !important;
            --yt-spec-text-secondary: var(--cust-ytmusic-medium-5) !important;
            --ytmusic-setting-item-toggle-active: var(--cust-ytmusic-light-2) !important;

            --ytmusic-brand-link-text: var(--idk-yet) !important;
            --ytmusic-overlay-background-brand: var(--idk-yet) !important;
            --ytmusic-focus-active: var(--idk-yet) !important;

            --ytmusic-detail-header: var(--idk-yet) !important;
            --ytmusic-dialog-background-color: var(--cust-ytmusic-dark-background) !important;
            --yt-spec-brand-link-text: var(--cust-ytmusic-medium-5) !important;

            --ytmusic-caption-1_-_color: var(--cust-ytmusic-medium-3) !important;

            --ytmusic-scrollbar-width: var(--cust-ytmusic-scroll-width)!important;
            --ytd-scrollbar-width: var(--cust-ytmusic-scroll-width)!important;
            --ytd-scrollbar-scrubber_-_background: var(--cust-ytmusic-dark-background);

      }    




      	/*Unique to the desktop ytmdesktop app*/    
      i.material-icons         /*The icons they added; not present on the web version*/
      	{
      	    color: var(--cust-ytmusic-tertiary-nav-button-color) !important;
      	}
      i.material-icons:hover
      	{
      	    color: var(--cust-ytmusic-tertiary-nav-button-color) !important;
      	}
      	/*Unique to the desktop ytmdesktop app*/   





      body 
          {
      	background: var(--cust-ytmusic-dark-background) !important 
          }


      	ytmusic-nav-bar 
      	{ 
      	    background: var(--cust-ytmusic-play-nav-color) !important 
      	}

      /*hide the youtube logo at the top left*/    
      	.yt-simple-endpoint[aria-label="Home"] 
      	{
      	    visibility:hidden !important 
      	}

      /*Home, Explore, Library colors*/

      	ytmusic-pivot-bar-item-renderer:hover, ytmusic-pivot-bar-item-renderer.iron-selected  /*highlighted word*/
          {
      	color: var(--cust-ytmusic-light-5) !important
          }
      	ytmusic-pivot-bar-item-renderer /*non-selected item*/
          {
      	color: var(--cust-ytmusic-light-4) !important
          }
      	ytmusic-search-box  /*search button colors*/
          {
      	color: var(--cust-ytmusic-light-4) !important
          }


      /*color 'new recommendations' pop-up*/    
      	a.ytmusic-content-update-chip 
      	{
      	    color: var(--ytmusic-color-black4) !important; 
      	    background-color: var(--ytmusic-color-grey2) !important
      	}




      ytmusic-detail-header-renderer
          {
      	background-color: var(--ytmusic-color-black4) !important
          }

          .title.ytmusic-detail-header-renderer
          {
      	color: var(--cust-ytmusic-light-text-1) !important
          }



      ytmusic-player-page
          {
      	background-color: var(--ytmusic-color-black4) !important
          }
          ytmusic-data-bound-header-renderer
          {
      	background-color: var(--cust-ytmusic-play-nav-color) !important
          }
          ytmusic-list-item-renderer 
          {
      	background-color: var(--ytmusic-color-black1) !important
          }
          ytmusic-responsive-list-item-renderer
          {
      	background-color: var(--ytmusic-cust-dark-background) !important
          }
          ytmusic-player-queue-item
          {
      	background-color: var(--ytmusic-cust-dark-background) !important
          }   
        paper-tab.iron-selected.ytmusic-player-page  /*Up Next color*/
          {                                                                                           /*depriciated*/
      	color: var(--cust-ytmusic-medium-3) !important
          }
      			tp-yt-paper-tab.iron-selected.ytmusic-player-page  /*ammended up next color Update*/
      			{
      			    color: var(--cust-ytmusic-medium-3) !important
      			} 
      			tp-yt-paper-tab.ytmusic-player-page
      			{
      			    color: var(--cust-ytmusic-medium-3) !important
      			}

          paper-tabs.ytmusic-player-page  /*up next line color*/
          {
      	--paper-tabs-selection-bar-color: var(--cust-ytmusic-medium-3) !important
          }
      			#selectionBar.tp-yt-paper-tabs   /*ammended up next line color Update*/
      			 {
      			     border-bottom: 2px solid var(--cust-ytmusic-medium-3) !important;
      			 }

          yt-formatted-string.byline.style-scope.ytmusic-player-queue-item  /*artist part in queue*/
          {
      	color: var(--cust-ytmusic-medium-1) !important
          }
          yt-formatted-string.duration.style-scope.ytmusic-player-queue-item /*length of songs in queue*/
          {
      	color: var(--cust-ytmusic-light-4) !important
          }

      /*color of the play bar background*/
      	ytmusic-player-bar 
      	{
      	    background: var(--cust-ytmusic-play-nav-color) !important
      	}   

      /*color of the progressbar slider*/
      	#progress-bar.ytmusic-player-bar 
      	{ 
      	    --paper-slider-active-color: var(--ytmusic-color-white1) !important
      	}
      	#progress-bar.ytmusic-player-bar[focused], ytmusic-player-bar:hover #progress-bar.ytmusic-player-bar
      	    {
      	    --paper-slider-knob-color: var(--ytmusic-color-white1) !important;
      	    --paper-slider-knob-start-color: var(--ytmusic-color-white1) !important;
      	    --paper-slider-knob-start-border-color: var(--ytmusic-color-white1) !important
      	    }
      /*volume slider*/    
          paper-slider#volume-slider
          {
      	--paper-slider-container-color: var(--cust-ytmusic-light-4) !important;
      	--paper-slider-active-color: var(--cust-ytmusic-tertiary-nav-button-color) !important;
      	--paper-slider-knob-color: var(--cust-ytmusic-tertiary-nav-button-color) !important
          }
      			.volume-slider.ytmusic-player-bar, .expand-volume-slider.ytmusic-player-bar  /*ammended volume slider color for Update*/
      			    {
      				    --paper-slider-container-color: var(--cust-ytmusic-light-4) !important;
      				    --paper-slider-active-color: var(--cust-ytmusic-tertiary-nav-button-color) !important;
      				    --paper-slider-knob-color: var(--cust-ytmusic-tertiary-nav-button-color) !important
      			    }





      /*play/pause/skip*/ 
          paper-icon-button#play-pause-button
          { 
      	--iron-icon-fill-color:var(--cust-ytmusic-playbutton-color) !important
          }
      		    tp-yt-iron-icon#icon   /*ammended play-pause button colors for Update*/
      		{
      			--iron-icon-fill-color:var(--cust-ytmusic-playbutton-color) !important
      		}

          .left-controls.ytmusic-player-bar paper-icon-button.ytmusic-player-bar, .left-controls.ytmusic-player-bar .spinner-container.ytmusic-player-bar, .toggle-player-page-button.ytmusic-player-bar
          { 
      	--iron-icon-fill-color: var(--cust-ytmusic-tertiary-nav-button-color) !important
          }
      /*nav bar menu icon*/    
          .menu.ytmusic-player-bar 
          {
      	--iron-icon-fill-color: var(--cust-ytmusic-tertiary-nav-button-color) !important
          }

      /*nav bar right button icon colors*/            
          .right-controls-buttons.ytmusic-player-bar paper-icon-button.ytmusic-player-bar, ytmusic-player-expanding-menu.ytmusic-player-bar paper-icon-button.ytmusic-player-bar
      	    {
      		--paper-icon-button_-_color: var(--cust-ytmusic-tertiary-nav-button-color) !important
      	    }

           .style-scope.yt-icon-button[aria-label="Add to playlist"]  /*add to playlist button Update*/
      	    {
      		color: var(--cust-ytmusic-tertiary-nav-button-color)
      	    }



      /*color of titles*/
          .title.ytmusic-carousel-shelf-basic-header-renderer, .title.ytmusic-immersive-header-renderer, .description.ytmusic-immersive-header-renderer
          {
      	color: var(--ytmusic-color-white1) !important
          }

          /*Now playing circle*/
         div.content-wrapper.style-scope.ytmusic-play-button-renderer
          {
      	background: var(--cust-ytmusic-nowplaying-color) !important
          }



      /*subscribe button*/    
          ytmusic-subscribe-button-renderer
          {
      	--ytmusic-subscribe-button-color: var(--cust-ytmusic-subscribe-color) !important
          }

          yt-button-renderer[is-paper-button]
          {
      	background-color: var(--ytmusic-color-white1-alpha70) !important
          }

          paper-icon-button
          {
      	--paper-icon-button_-_color: var(--ytmusic-color-white1) !important
          }
      /*add to library button*/    
          ytmusic-data-bound-top-level-menu-item.ytmusic-data-bound-menu-renderer:not(:first-child)
          {
      	--yt-button-color: var(--ytmusic-color-white1) !important;
      	border: 1px solid var(--ytmusic-color-white1) !important;
      	border-radius: 5px !important
          }
      /*shuffle playlist button*/
          yt-button-renderer.watch-button.ytmusic-menu-renderer
          {
      	color: var(--ytmusic-color-white1) !important;
      	background-color: var(--ytmusic-color-white1-alpha70) !important
          }
      /*edit playlist button*/
          #top-level-buttons.ytmusic-menu-renderer > .outline-button.ytmusic-menu-renderer, .edit-playlist-button.ytmusic-menu-renderer, ytmusic-toggle-button-renderer.ytmusic-menu-renderer
          {
      	--yt-button-color: var(--ytmusic-color-white1) !important
          }
      /*explicit badge*/
          yt-icon.ytmusic-inline-badge-renderer
          {
      	color: var(--cust-ytmusic-tertiary-nav-button-color) !important
          }



      /*headers that aren't links*/
          .title.ytmusic-carousel-shelf-basic-header-renderer, .title.ytmusic-immersive-header-renderer, .description.ytmusic-immersive-header-renderer
          {
      	color: var(--cust-ytmusic-header-text-1) !important
          }
      			/*Songs header*/
          .title.ytmusic-header-renderer
          {
      	color: var(--cust-ytmusic-header-text-2) !important
          }
          yt-formatted-string.strapline.text.style-scope.ytmusic-carousel-shelf-basic-header-renderer
          {
      	color: var(--cust-ytmusic-light-4) !important
          }    

      /*Links*/    
          yt-formatted-string[has-link-only_]:not([force-default-style]) a.yt-simple-endpoint.yt-formatted-string
          {
      	color: var(--cust-ytmusic-main-text-1) !important
          }
          yt-formatted-string[has-link-only_]:not([force-default-style]) a.yt-simple-endpoint.yt-formatted-string:hover
          {
      	color: var(--cust-ytmusic-light-2) !important
          }




      /* scroll left and right carousel buttons */        
          .previous-items-button.ytmusic-carousel, .next-items-button.ytmusic-carousel 
          {
      	background-color: var(--ytmusic-color-white1-alpha70) !important;
      	color: var(--ytmusic-color-black1) !important
          }

      /* play button that pops up over album art to play immediately */    
          .content-wrapper.ytmusic-play-button-renderer, ytmusic-play-button-renderer:hover .content-wrapper.ytmusic-play-button-renderer, ytmusic-play-button-renderer:focus .content-wrapper.ytmusic-play-button-renderer
          {
      	background: var(--ytmusic-color-white1-alpha70) !important;
      	--ytmusic-play-button-icon-color: var(--ytmusic-color-black1) !important;
      	--paper-spinner-color: var(--yt-spec-themed-blue) !important
          }


      /* like button color */    
          paper-icon-button.ytmusic-like-button-renderer 
          {
      	color: var(--cust-ytmusic-medium-3) !important
          }

      /*settings highlighted*/
          .category-menu-item.iron-selected.ytmusic-settings-page
          { 
      	background-color: var(--cust-ytmusic-medium-1) !important
          }
      /* some dropdown menus*/
          .dropdown-content
          { 
      	background-color: var(--cust-ytmusic-dark-foreground) !important
          }
      /* fix the latest ambient update overriding the colors */
          div.background-gradient.style-scope.ytmusic-browse-response
          {
          background-image: linear-gradient(to bottom, var(--cust-ytmusic-dark-background), var(--cust-ytmusic-dark-background)) !important;
          }
    '';
  };
}
