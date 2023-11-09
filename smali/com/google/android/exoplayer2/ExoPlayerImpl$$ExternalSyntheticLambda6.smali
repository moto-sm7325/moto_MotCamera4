.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda6;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda6;->INSTANCE:Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda6;

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

    check-cast p1, Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player$EventListener;->onSeekProcessed()V

    return-void
.end method
