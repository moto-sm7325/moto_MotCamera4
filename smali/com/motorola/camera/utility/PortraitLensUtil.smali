.class public final Lcom/motorola/camera/utility/PortraitLensUtil;
.super Ljava/lang/Object;
.source "PortraitLensUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;,
        Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;,
        Lcom/motorola/camera/utility/PortraitLensUtil$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPortraitLensUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PortraitLensUtil.kt\ncom/motorola/camera/utility/PortraitLensUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,162:1\n1741#2,3:163\n22496#3,6:166\n*S KotlinDebug\n*F\n+ 1 PortraitLensUtil.kt\ncom/motorola/camera/utility/PortraitLensUtil\n*L\n156#1:163,3\n63#1:166,6\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/utility/PortraitLensUtil;

.field public static final focalSegmentsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;",
            "Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/motorola/camera/utility/PortraitLensUtil;

    invoke-direct {v0}, Lcom/motorola/camera/utility/PortraitLensUtil;-><init>()V

    sput-object v0, Lcom/motorola/camera/utility/PortraitLensUtil;->INSTANCE:Lcom/motorola/camera/utility/PortraitLensUtil;

    .line 1
    const-class v0, Lcom/motorola/camera/utility/PortraitLensUtil;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/utility/PortraitLensUtil;->focalSegmentsMap:Ljava/util/Map;

    .line 3
    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 4
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLens:Z

    if-eqz v1, :cond_4

    .line 5
    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLensCameraType:[Lcom/motorola/camera/settings/CameraType;

    .line 6
    iget-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLensZoomValue:[F

    .line 7
    iget-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLensBlurLevel:[I

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    const-string/jumbo v4, "zoomValues"

    .line 9
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "cameraTypes"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    array-length v4, v2

    array-length v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v4, :cond_4

    add-int/lit8 v9, v7, 0x1

    .line 12
    aget v13, v2, v7

    aget-object v12, v1, v7

    .line 13
    sget-object v7, Lcom/motorola/camera/utility/PortraitLensUtil;->focalSegmentsMap:Ljava/util/Map;

    .line 14
    invoke-static {}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->values()[Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    move-result-object v10

    aget-object v15, v10, v8

    new-instance v14, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;

    const-string v10, "cameraType"

    .line 15
    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v10, "zoomBlendingSegments"

    .line 16
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v10

    if-nez v10, :cond_0

    move-object v10, v12

    .line 18
    :cond_0
    sget-object v16, Lcom/motorola/camera/utility/PortraitLensUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v16, v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    const/4 v6, 0x2

    if-eq v10, v6, :cond_2

    const/4 v11, 0x3

    if-eq v10, v11, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    .line 19
    :cond_1
    aget v6, v0, v6

    goto :goto_1

    .line 20
    :cond_2
    aget v6, v0, v11

    :goto_1
    move v10, v6

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 21
    aget v10, v0, v6

    :goto_2
    mul-float v17, v10, v13

    .line 22
    aget v10, v3, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v10, v14

    const/4 v11, 0x1

    move-object v6, v14

    move/from16 v14, v17

    move-object/from16 v17, v0

    move-object v0, v15

    move-object/from16 v15, v18

    .line 23
    invoke-direct/range {v10 .. v15}, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;-><init>(ZLcom/motorola/camera/settings/CameraType;FFLjava/lang/Integer;)V

    check-cast v7, Ljava/util/EnumMap;

    invoke-virtual {v7, v0, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v8, 0x1

    .line 24
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v0

    move v7, v9

    move-object/from16 v0, v17

    goto :goto_0

    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBlurLevel(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil;->focalSegmentsMap:Ljava/util/Map;

    check-cast v0, Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->blurLevel:Ljava/lang/Integer;

    :goto_0
    return-object p0
.end method

.method public static final getCameraType(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Lcom/motorola/camera/settings/CameraType;
    .locals 1

    const-string v0, "segment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil;->focalSegmentsMap:Ljava/util/Map;

    check-cast v0, Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;

    if-nez p0, :cond_0

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->cameraType:Lcom/motorola/camera/settings/CameraType;

    :goto_0
    return-object p0
.end method

.method public static final getZoomValue(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)F
    .locals 1

    const-string v0, "segment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil;->focalSegmentsMap:Ljava/util/Map;

    check-cast v0, Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2
    :cond_0
    iget p0, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->zoomValue:F

    :goto_0
    return p0
.end method

.method public static final hasCloseUpSegment()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->CLOSE_UP:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    invoke-static {v0}, Lcom/motorola/camera/utility/PortraitLensUtil;->hasSegment(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Z

    move-result v0

    return v0
.end method

.method public static final hasSegment(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil;->focalSegmentsMap:Ljava/util/Map;

    check-cast v0, Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean p0, p0, Lcom/motorola/camera/utility/PortraitLensUtil$PortraitLensConfig;->enabled:Z

    :goto_0
    return p0
.end method

.method public static final hasStandardSegment()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->STANDARD:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    invoke-static {v0}, Lcom/motorola/camera/utility/PortraitLensUtil;->hasSegment(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Z

    move-result v0

    return v0
.end method

.method public static final hasWideSegment()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->WIDE:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    invoke-static {v0}, Lcom/motorola/camera/utility/PortraitLensUtil;->hasSegment(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Z

    move-result v0

    return v0
.end method

.method public static final mapZoomSegmentToFocalSegment(Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;)Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;
    .locals 2

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->STANDARD:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    const-string/jumbo v1, "zoomSegment"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_2

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->CLOSE_UP:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->WIDE:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    :cond_2
    :goto_0
    return-object v0
.end method
