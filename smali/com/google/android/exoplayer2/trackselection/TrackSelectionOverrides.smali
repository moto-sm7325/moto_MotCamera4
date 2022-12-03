.class public final Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;
.super Ljava/lang/Object;
.source "TrackSelectionOverrides.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;


# instance fields
.field public final overrides:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;

    .line 2
    sget-object v1, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;->EMPTY:Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;

    .line 3
    sget-object v0, Lcom/google/android/exoplayer2/TracksInfo$$ExternalSyntheticLambda0;->INSTANCE$com$google$android$exoplayer2$trackselection$TrackSelectionOverrides$$InternalSyntheticLambda$5$1e9a6902ffcb5b05e03a3bbc21f600392f7848178206f02a457c7946c88f5e61$0:Lcom/google/android/exoplayer2/TracksInfo$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;->overrides:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    const-class v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;->overrides:Lcom/google/common/collect/ImmutableMap;

    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->equalsImpl(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result p0

    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x24

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    .line 4
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
