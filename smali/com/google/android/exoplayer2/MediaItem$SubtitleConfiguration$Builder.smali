.class public final Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public roleFlags:I

.field public selectionFlags:I

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->uri:Landroid/net/Uri;

    .line 3
    iget-object p2, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->mimeType:Ljava/lang/String;

    .line 4
    iget-object p2, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->language:Ljava/lang/String;

    .line 5
    iget p2, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->selectionFlags:I

    iput p2, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->selectionFlags:I

    .line 6
    iget p2, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->roleFlags:I

    iput p2, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->roleFlags:I

    .line 7
    iget-object p2, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->label:Ljava/lang/String;

    .line 8
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->id:Ljava/lang/String;

    return-void
.end method
