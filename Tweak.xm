%hook SPTFreeTierPlaylistTrackShuffler
- (void)setRandomNumbers:(id)arg1 {
return %orig;
} 

- (id)randomNumbers {
return %orig;
} 

- (double)weightForTrack:(id)arg1 recommendedTrack:(bool)arg2 mergedList:(bool)arg3 {
    arg2 = NO;
    arg3 = NO;
    return %orig;
} 
%end

%hook SPTFreeTierPlaylistTrackShuffler
- (id)weightedShuffleListWithTracks:(id)arg1 recommendations:(id)arg2 {
    return NULL;
} 
%end

%hook SPTNowPlayingShuffleButton
- (id)iconColor {
    return [UIColor colorWithRed:134.0/255.0 green:198.0/255.0 blue:255.0/255.0 alpha:255.0/255.0];
} 

- (void)setIconColor:(id)arg1 {
    arg1 = [UIColor colorWithRed:134.0/255.0 green:198.0/255.0 blue:255.0/255.0 alpha:255.0/255.0];
    %orig;
} 
%end

