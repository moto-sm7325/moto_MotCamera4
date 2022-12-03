.class public final synthetic Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$androidx$room$AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$$InternalSyntheticLambda$0$fce62bcfb672b4d48c9b1df3262deaf33f9bca8117c0d39d2ba185f00fce62c9$0:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$$ExternalSyntheticLambda0;->INSTANCE$androidx$room$AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$$InternalSyntheticLambda$0$fce62bcfb672b4d48c9b1df3262deaf33f9bca8117c0d39d2ba185f00fce62c9$0:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$$ExternalSyntheticLambda0;

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

    .line 1
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 10

    .line 1
    new-instance p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v0, 0x2

    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 v0, 0x3

    .line 6
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x800001

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v9

    const/4 v0, 0x4

    .line 8
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    move-object v0, p0

    move-wide v1, v3

    move-wide v3, v5

    move-wide v5, v7

    move v7, v9

    move v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;-><init>(JJJFF)V

    return-object p0
.end method
