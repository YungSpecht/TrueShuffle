%hook SPTFreeTierPlaylistTrackShuffler
- (void)setRandomNumbers:(id)arg1 {
    %orig;
} 

- (id)randomNumbers {
    return %orig;
} 

- (double)weightForTrack:(id)arg1 recommendedTrack:(bool)arg2 mergedList:(bool)arg3 {
    return %orig(arg1, NO, NO);
} 
%end

%hook SPTFreeTierPlaylistTrackShuffler
- (id)weightedShuffleListWithTracks:(id)arg1 recommendations:(id)arg2 {
    return NULL;
} 
%end

%hook SPTNowPlayingShuffleButton
- (id)iconColor {
    return [UIColor colorWithRed:134.0/255.0 green:198.0/255.0 blue:1.0 alpha:1.0];
} 

- (void)setIconColor:(id)arg1 {
    %orig([UIColor colorWithRed:134.0/255.0 green:198.0/255.0 blue:1.0 alpha:1.0]);
} 
%end

