# WWDC20 File Renamer

This is a script as a SPM executable that iterates through the 200 or so WWDC20 videos I had downloaded and renames them on disk using the JSON from the unofficial [WWDC](https://github.com/insidegui/WWDC) app.

The script expects video files with the name `wwdc2020_{session-id}_hd.mp4` for example `wwdc2020_10011_hd` for session 10011. The output filename for this session will be: `10011 Author fragmented MPEG-4 content with AVAssetWriter.mp4`.

## Usage 

```
FileRenamer <location of WWDC20 videos> <location of WWDC20 json>
```

The WWDC20 information json is included in this repository as WWDC20.json.  
