.class public Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable$InstanceHolder;
.super Ljava/lang/Object;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceHolder"
.end annotation


# instance fields
.field public identifier:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/Main$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/Main$SingleInstanceRunnable$InstanceHolder;->identifier:Ljava/lang/Object;

    return-void
.end method
