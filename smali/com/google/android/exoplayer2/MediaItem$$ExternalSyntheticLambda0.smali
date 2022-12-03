.class public final synthetic Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$androidx$room$AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$$InternalSyntheticLambda$0$a7aeff940d44feb3c7842d6dafe160446b34f367d311bc45f5a76c140096d49e$0:Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;->INSTANCE$androidx$room$AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$$InternalSyntheticLambda$0$a7aeff940d44feb3c7842d6dafe160446b34f367d311bc45f5a76c140096d49e$0:Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/MediaItem$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 7

    const/4 p0, 0x0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaItem;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaItem;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    .line 4
    sget-object p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->UNSET:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    check-cast v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    :goto_0
    move-object v5, p0

    const/4 p0, 0x2

    .line 6
    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaItem;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_1

    .line 7
    sget-object p0, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    goto :goto_1

    .line 8
    :cond_1
    sget-object v0, Lcom/google/android/exoplayer2/MediaMetadata;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    check-cast v0, Lcom/google/android/exoplayer2/MediaMetadata$$ExternalSyntheticLambda1;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/MediaMetadata$$ExternalSyntheticLambda1;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/MediaMetadata;

    :goto_1
    move-object v6, p0

    const/4 p0, 0x3

    .line 9
    invoke-static {p0}, Lcom/google/android/exoplayer2/MediaItem;->keyForField(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_2

    .line 10
    sget-object p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;->UNSET:Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    goto :goto_2

    .line 11
    :cond_2
    sget-object p1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    check-cast p1, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/MediaItem$ClippingConfiguration$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;

    :goto_2
    move-object v3, p0

    .line 12
    new-instance p0, Lcom/google/android/exoplayer2/MediaItem;

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/MediaItem;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$ClippingProperties;Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-object p0
.end method
