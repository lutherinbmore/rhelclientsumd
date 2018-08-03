import arcpy
licensed = arcpy.ProductInfo()
if licensed == 'ArcInfo':
    testfile = open('C:\Program Files (x86)\ArcGIS\Desktop10.6\licensed','w')
    testfile.write(licensed)
    testfile.close()
