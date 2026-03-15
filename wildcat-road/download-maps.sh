#!/bin/bash
# Download all static map images for cutler.cloud/wildcat-road
# Run this from inside your wildcat-road/ folder:
#   chmod +x download-maps.sh && ./download-maps.sh

mkdir -p map-images
echo "Downloading map images..."

# ── HERO (neighborhood view) ──
HERO="-82.29087249248235,38.43842654229263,-82.25487249248235,38.46242654229263"
curl -sL "https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/export?bbox=${HERO}&bboxSR=4326&size=1400,800&imageSR=4326&format=jpg&f=image" -o map-images/map-hero-satellite.jpg && echo "✓ hero satellite"
curl -sL "https://basemap.nationalmap.gov/arcgis/rest/services/USGSTopo/MapServer/export?bbox=${HERO}&bboxSR=4326&size=1400,800&imageSR=4326&format=jpg&f=image" -o map-images/map-hero-topo.jpg && echo "✓ hero topo"
curl -sL "https://services.arcgisonline.com/ArcGIS/rest/services/World_Street_Map/MapServer/export?bbox=${HERO}&bboxSR=4326&size=1400,800&imageSR=4326&format=jpg&f=image" -o map-images/map-hero-street.jpg && echo "✓ hero street"

# ── TERRAIN ──
TERR="-82.29487249248236,38.43542654229263,-82.25087249248234,38.46542654229263"
curl -sL "https://basemap.nationalmap.gov/arcgis/rest/services/USGSTopo/MapServer/export?bbox=${TERR}&bboxSR=4326&size=1400,800&imageSR=4326&format=jpg&f=image" -o map-images/map-terrain-topo.jpg && echo "✓ terrain topo"
curl -sL "https://server.arcgisonline.com/ArcGIS/rest/services/Elevation/World_Hillshade/MapServer/export?bbox=${TERR}&bboxSR=4326&size=1400,800&imageSR=4326&format=jpg&f=image" -o map-images/map-terrain-lidar.jpg && echo "✓ terrain lidar"
curl -sL "https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/export?bbox=${TERR}&bboxSR=4326&size=1400,800&imageSR=4326&format=jpg&f=image" -o map-images/map-terrain-satellite.jpg && echo "✓ terrain satellite"

# ── INDIGENOUS (Salt Rock area) ──
INDIG="-82.346,38.337,-82.166,38.457"
curl -sL "https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/export?bbox=${INDIG}&bboxSR=4326&size=1400,800&imageSR=4326&format=jpg&f=image" -o map-images/map-indigenous-satellite.jpg && echo "✓ indigenous satellite"
curl -sL "https://basemap.nationalmap.gov/arcgis/rest/services/USGSTopo/MapServer/export?bbox=${INDIG}&bboxSR=4326&size=1400,800&imageSR=4326&format=jpg&f=image" -o map-images/map-indigenous-topo.jpg && echo "✓ indigenous topo"
curl -sL "https://services.arcgisonline.com/ArcGIS/rest/services/World_Street_Map/MapServer/export?bbox=${INDIG}&bboxSR=4326&size=1400,800&imageSR=4326&format=jpg&f=image" -o map-images/map-indigenous-street.jpg && echo "✓ indigenous street"

# ── REGIONAL ──
RGNL="-82.33287249248235,38.41042654229263,-82.21287249248235,38.49042654229263"
curl -sL "https://services.arcgisonline.com/ArcGIS/rest/services/World_Street_Map/MapServer/export?bbox=${RGNL}&bboxSR=4326&size=1400,800&imageSR=4326&format=jpg&f=image" -o map-images/map-regional-street.jpg && echo "✓ regional street"
curl -sL "https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/export?bbox=${RGNL}&bboxSR=4326&size=1400,800&imageSR=4326&format=jpg&f=image" -o map-images/map-regional-satellite.jpg && echo "✓ regional satellite"
curl -sL "https://basemap.nationalmap.gov/arcgis/rest/services/USGSImageryTopo/MapServer/export?bbox=${RGNL}&bboxSR=4326&size=1400,800&imageSR=4326&format=jpg&f=image" -o map-images/map-regional-hybrid.jpg && echo "✓ regional hybrid"

# ── CLOSEUP (parcel) ──
CLSE="-82.27587249248235,38.44842654229263,-82.26987249248235,38.45242654229263"
curl -sL "https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/export?bbox=${CLSE}&bboxSR=4326&size=1400,800&imageSR=4326&format=jpg&f=image" -o map-images/map-closeup-satellite.jpg && echo "✓ closeup satellite"
curl -sL "https://basemap.nationalmap.gov/arcgis/rest/services/USGSTopo/MapServer/export?bbox=${CLSE}&bboxSR=4326&size=1400,800&imageSR=4326&format=jpg&f=image" -o map-images/map-closeup-topo.jpg && echo "✓ closeup topo"
curl -sL "https://server.arcgisonline.com/ArcGIS/rest/services/Elevation/World_Hillshade/MapServer/export?bbox=${CLSE}&bboxSR=4326&size=1400,800&imageSR=4326&format=jpg&f=image" -o map-images/map-closeup-lidar.jpg && echo "✓ closeup lidar"

# ── WIDE (county context) ──
WIDE="-82.39287249248235,38.37042654229263,-82.15287249248235,38.53042654229263"
curl -sL "https://basemap.nationalmap.gov/arcgis/rest/services/USGSImageryTopo/MapServer/export?bbox=${WIDE}&bboxSR=4326&size=1400,800&imageSR=4326&format=jpg&f=image" -o map-images/map-wide-hybrid.jpg && echo "✓ wide hybrid"
curl -sL "https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/export?bbox=${WIDE}&bboxSR=4326&size=1400,800&imageSR=4326&format=jpg&f=image" -o map-images/map-wide-satellite.jpg && echo "✓ wide satellite"
curl -sL "https://basemap.nationalmap.gov/arcgis/rest/services/USGSTopo/MapServer/export?bbox=${WIDE}&bboxSR=4326&size=1400,800&imageSR=4326&format=jpg&f=image" -o map-images/map-wide-topo.jpg && echo "✓ wide topo"

echo ""
echo "Done. Checking file sizes:"
ls -lh map-images/
echo ""
echo "Any suspiciously small files (errors return tiny HTML):"
find map-images -name "*.jpg" -size -5k -exec echo "  WARNING small: {}" \;
echo "All done!"
