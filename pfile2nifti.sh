for subj in `ls -d /Volumes/Smurf-Village/scratch/rnwright/cc_emo_structs_for_carlo/*`; 
        do 
                if [ -e $subj/emoconflict ];
                         then echo $subj; 
                         makenifti -d 3 $subj/emoconflict/E* $(basename $subj)_emoconflict;
                         mkdir $subj/emo_nii; 
                         mv -v $subj/emoconflict/$(basename $subj)_emoconflict.nii $subj/emo_nii/$(basename $subj)_emoconflict.nii;
                          cd /Volumes/Smurf-Village/scratch/rnwright/cc_emo_structs_for_carlo/;
                          echo "ding";
                fi; 
        done