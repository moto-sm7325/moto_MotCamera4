.class public final Lcom/google/android/gms/dynamite/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/zzm;)Lcom/google/android/gms/dynamite/zzn;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    new-instance p0, Lcom/google/android/gms/dynamite/zzn;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/dynamite/zzn;-><init>()V

    .line 2
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/dynamite/zzm;->zzb(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/dynamite/zzn;->zza:I

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/dynamite/zzn;->zzc:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-interface {p3, p1, p2, v0}, Lcom/google/android/gms/dynamite/zzm;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/dynamite/zzn;->zzb:I

    if-eqz p1, :cond_1

    iput v0, p0, Lcom/google/android/gms/dynamite/zzn;->zzc:I

    :cond_1
    :goto_0
    return-object p0
.end method
