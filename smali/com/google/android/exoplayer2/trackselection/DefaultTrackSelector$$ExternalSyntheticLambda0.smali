.class public final synthetic Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackInfo;

    invoke-static {p2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackInfo;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackInfo;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackInfo;)I

    move-result p0

    return p0
.end method
