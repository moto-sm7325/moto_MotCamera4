.class public final synthetic Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda3;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda3;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$$ExternalSyntheticLambda3;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    .line 1
    sget-object p0, Lcom/google/common/collect/ComparisonChain;->ACTIVE:Lcom/google/common/collect/ComparisonChain;

    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda0;

    .line 2
    invoke-static {p1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;

    sget-object v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda0;

    .line 3
    invoke-static {p2, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;

    sget-object v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda2;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda2;

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda1;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda1;

    .line 6
    invoke-static {p1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;

    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda1;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda1;

    .line 7
    invoke-static {p2, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;

    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda1;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda1;

    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p0

    return p0
.end method
