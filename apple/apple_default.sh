#!/bin/sh

#-------------------------------------------------------------------------------
# finder
#-------------------------------------------------------------------------------
# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Empty Trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `glyv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

#-------------------------------------------------------------------------------
#
#-------------------------------------------------------------------------------
# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Avoid creating .DS_Store files on network
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

#-------------------------------------------------------------------------------
# Safari
#-------------------------------------------------------------------------------
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Enable continuous spellchecking
defaults write com.apple.Safari WebContinuousSpellCheckingEnabled -bool true

# Disable auto-correct
defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool false

# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

#-------------------------------------------------------------------------------
# Screenshots
#-------------------------------------------------------------------------------

# create screenshots dir
function screenshots_mk {

    # change to dir
    cd ~/Pictures

    # exists or create
    [[ -d dir ]] || mkdir Screenshots

}

screenshots_mk

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "${HOME}/Pictures/Screenshots"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# To check the settings use defaults read com.apple.finder StandardViewSettings
# Save default finder attributes
defaults write com.apple.finder StandardViewSettings "{
    ExtendedListViewSettingsV2 =     {
        calculateAllSizes = 1;
        columns =         (
                        {
                ascending = 1;
                identifier = name;
                visible = 1;
                width = 664;
            },
                        {
                ascending = 0;
                identifier = ubiquity;
                visible = 0;
                width = 35;
            },
                        {
                ascending = 0;
                identifier = dateModified;
                visible = 1;
                width = 179;
            },
                        {
                ascending = 0;
                identifier = dateCreated;
                visible = 0;
                width = 179;
            },
                        {
                ascending = 0;
                identifier = kind;
                visible = 1;
                width = 115;
            },
                        {
                ascending = 1;
                identifier = label;
                visible = 0;
                width = 100;
            },
                        {
                ascending = 1;
                identifier = version;
                visible = 0;
                width = 75;
            },
                        {
                ascending = 1;
                identifier = comments;
                visible = 0;
                width = 300;
            },
                        {
                ascending = 0;
                identifier = dateLastOpened;
                visible = 0;
                width = 179;
            },
                        {
                ascending = 0;
                identifier = dateAdded;
                visible = 1;
                width = 179;
            },
                        {
                ascending = 0;
                identifier = shareOwner;
                visible = 0;
                width = 210;
            },
                        {
                ascending = 0;
                identifier = shareLastEditor;
                visible = 0;
                width = 210;
            },
                        {
                ascending = 0;
                identifier = invitationStatus;
                visible = 0;
                width = 210;
            },
                        {
                ascending = 0;
                identifier = size;
                visible = 1;
                width = 97;
            },
        );
        iconSize = 16;
        showIconPreview = 1;
        sortColumn = name;
        textSize = 12;
        useRelativeDates = 1;
        viewOptionsVersion = 1;
    };
    GalleryViewSettings =     {
        arrangeBy = name;
        iconSize = 48;
        showIconPreview = 1;
        viewOptionsVersion = 1;
    };
    IconViewSettings =     {
        arrangeBy = none;
        backgroundColorBlue = 1;
        backgroundColorGreen = 1;
        backgroundColorRed = 1;
        backgroundType = 0;
        gridOffsetX = 0;
        gridOffsetY = 0;
        gridSpacing = 54;
        iconSize = 64;
        labelOnBottom = 1;
        showIconPreview = 1;
        showItemInfo = 0;
        textSize = 12;
        viewOptionsVersion = 1;
    };
    ListViewSettings =     {
        calculateAllSizes = 1;
        columns =         {
            comments =             {
                ascending = 1;
                index = 6;
                visible = 0;
                width = 300;
            };
            dateCreated =             {
                ascending = 0;
                index = 2;
                visible = 0;
                width = 179;
            };
            dateLastOpened =             {
                ascending = 0;
                index = 7;
                visible = 0;
                width = 179;
            };
            dateModified =             {
                ascending = 0;
                index = 1;
                visible = 1;
                width = 179;
            };
            kind =             {
                ascending = 0;
                index = 3;
                visible = 1;
                width = 115;
            };
            label =             {
                ascending = 1;
                index = 4;
                visible = 0;
                width = 100;
            };
            name =             {
                ascending = 1;
                index = 0;
                visible = 1;
                width = 664;
            };
            size =             {
                ascending = 0;
                index = 8;
                visible = 1;
                width = 97;
            };
            version =             {
                ascending = 1;
                index = 5;
                visible = 0;
                width = 75;
            };
        };
        iconSize = 16;
        showIconPreview = 1;
        sortColumn = name;
        textSize = 12;
        useRelativeDates = 1;
        viewOptionsVersion = 1;
    };
    SettingsType = StandardViewSettings;
}"

