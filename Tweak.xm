%hook SPTFreeTierPlaylistTrackShuffler
- (void)setRandomNumbers:(id)arg1 {
%orig;
} 

- (id)randomNumbers {
return %orig;
} 

- (double)weightForTrack:(id)arg1 recommendedTrack:(bool)arg2 mergedList:(bool)arg3 {
    arg2 = NO;
    arg3 = NO;
    return %orig;
} 

- (id)weightedShuffleListWithTracks:(id)arg1 recommendations:(id)arg2 {
    return NULL;
} 
%end


%hook SPTSignupParameterShufflerImplementation
- (id)createShuffledKeyListFromParameters:(id)arg1 {
    return NULL;
} 

- (id)createHashFromParameterValues:(id)arg1 {
    return NULL;
} 
%end

