.class public final Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView$DisableScrolledLayoutManager;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;
.source "DualCaptureLayoutRecyclerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisableScrolledLayoutManager"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView$DisableScrolledLayoutManager;",
        "Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;",
        "Landroid/content/Context;",
        "context",
        "",
        "orientation",
        "",
        "reverseLayout",
        "<init>",
        "(Landroid/content/Context;IZ)V",
        "MotCamera4-v9.0.28.84_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canScrollVertically()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
