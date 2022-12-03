.class public final synthetic Lcom/motorola/camera/utility/PortraitLensUtil$WhenMappings;
.super Ljava/lang/Object;
.source "PortraitLensUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/PortraitLensUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/motorola/camera/settings/CameraType;->values()[Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sput-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->values()[Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v4, v0, v1

    return-void
.end method
