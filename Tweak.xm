%hook SPTFreeTierPlaylistTrackShuffler

- (double)weightForTrack:(id)arg1 recommendedTrack:(bool)arg2 mergedList:(bool)arg3 {
    arg2 = NO;
    arg3 = NO;
    return %orig;
} 

- (id)weightedShuffleListWithTracks:(id)arg1 recommendations:(id)arg2 {
    return nil;
} 
%end


