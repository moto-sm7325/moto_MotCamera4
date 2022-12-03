.class public final Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$CLOSE_UP;
.super Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;
.source "PortraitLensUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CLOSE_UP"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public getIconRes()I
    .locals 0

    const p0, 0x7f0801eb

    return p0
.end method

.method public getIconSelectedRes()I
    .locals 0

    const p0, 0x7f0801ec

    return p0
.end method

.method public getZoomSegment()Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;->PC:Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;

    return-object p0
.end method
