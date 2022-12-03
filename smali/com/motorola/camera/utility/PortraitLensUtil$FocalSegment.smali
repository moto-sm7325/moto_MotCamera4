.class public abstract enum Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;
.super Ljava/lang/Enum;
.source "PortraitLensUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/PortraitLensUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FocalSegment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$WIDE;,
        Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$STANDARD;,
        Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$CLOSE_UP;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

.field public static final enum CLOSE_UP:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

.field public static final enum STANDARD:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

.field public static final enum WIDE:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$WIDE;

    const-string v1, "WIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$WIDE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->WIDE:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    .line 2
    new-instance v1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$STANDARD;

    const-string v3, "STANDARD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$STANDARD;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->STANDARD:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    .line 3
    new-instance v3, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$CLOSE_UP;

    const-string v5, "CLOSE_UP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$CLOSE_UP;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->CLOSE_UP:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->$VALUES:[Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;
    .locals 1

    const-class v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;
    .locals 1

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->$VALUES:[Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    return-object v0
.end method


# virtual methods
.method public abstract getIconRes()I
.end method

.method public abstract getIconSelectedRes()I
.end method

.method public abstract getZoomSegment()Lcom/motorola/camera/utility/ZoomHelper$ZoomSegment;
.end method
