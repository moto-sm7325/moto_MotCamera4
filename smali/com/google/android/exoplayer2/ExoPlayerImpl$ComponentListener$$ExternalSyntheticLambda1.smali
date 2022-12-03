.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;->INSTANCE:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player$Listener;->onRenderedFirstFrame()V

    return-void
.end method
