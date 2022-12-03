.class public final synthetic Lcom/google/android/exoplayer2/TracksInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE$com$google$android$exoplayer2$trackselection$TrackSelectionOverrides$$InternalSyntheticLambda$5$1e9a6902ffcb5b05e03a3bbc21f600392f7848178206f02a457c7946c88f5e61$0:Lcom/google/android/exoplayer2/TracksInfo$$ExternalSyntheticLambda0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/TracksInfo$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/TracksInfo$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/TracksInfo$$ExternalSyntheticLambda0;->INSTANCE$com$google$android$exoplayer2$trackselection$TrackSelectionOverrides$$InternalSyntheticLambda$5$1e9a6902ffcb5b05e03a3bbc21f600392f7848178206f02a457c7946c88f5e61$0:Lcom/google/android/exoplayer2/TracksInfo$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/TracksInfo$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 3

    iget p0, p0, Lcom/google/android/exoplayer2/TracksInfo$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v0, 0x0

    const/16 v1, 0x24

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lcom/google/android/exoplayer2/TracksInfo;->EMPTY:Lcom/google/android/exoplayer2/TracksInfo;

    .line 1
    sget-object p0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/AbstractIndexedListIterator;

    .line 5
    sget-object v0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/ImmutableList;

    .line 6
    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromBundleNullableList(Lcom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/TracksInfo;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/TracksInfo;-><init>(Ljava/util/List;)V

    return-object p1

    .line 8
    :goto_0
    sget-object p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;->EMPTY:Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;

    .line 9
    sget-object p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 12
    sget-object v1, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/AbstractIndexedListIterator;

    .line 13
    sget-object v1, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/ImmutableList;

    .line 14
    invoke-static {p0, p1, v1}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromBundleNullableList(Lcom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 15
    new-instance p1, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {p1}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 16
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 17
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;

    .line 18
    iget-object v2, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {p1, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 19
    :cond_0
    new-instance p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;-><init>(Ljava/util/Map;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
