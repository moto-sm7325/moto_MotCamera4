.class public final Lcom/google/android/play/core/assetpacks/zzs;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lcom/google/android/play/core/internal/zzcs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/zzcs<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Lcom/google/android/play/core/internal/zzcs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Lcom/google/android/play/core/assetpacks/zzl;",
            ">;"
        }
    .end annotation
.end field

.field public final zzb:Lcom/google/android/play/core/internal/zzcs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/zzcs<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/zzcs;Lcom/google/android/play/core/internal/zzcs;I)V
    .locals 1

    iput p3, p0, Lcom/google/android/play/core/assetpacks/zzs;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzs;->zza:Lcom/google/android/play/core/internal/zzcs;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzs;->zzb:Lcom/google/android/play/core/internal/zzcs;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzs;->zza:Lcom/google/android/play/core/internal/zzcs;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzs;->zzb:Lcom/google/android/play/core/internal/zzcs;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/google/android/play/core/assetpacks/zzs;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzs;->zza:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzs;->zzb:Lcom/google/android/play/core/internal/zzcs;

    check-cast p0, Lcom/google/android/play/core/assetpacks/zzu;

    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/zzu;->zzb()Landroid/content/Context;

    move-result-object p0

    .line 2
    check-cast v0, Lcom/google/android/play/core/assetpacks/zzl;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.play.core.assetpacks.AssetPackExtractionService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 5
    invoke-static {v1, v2, v3}, Lcom/google/android/play/core/internal/zzcd;->zza(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v4, "com.google.android.play.core.assetpacks.ExtractionForegroundService"

    invoke-direct {v2, p0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {v1, v2, v3}, Lcom/google/android/play/core/internal/zzcd;->zza(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    const-string p0, "Cannot return null from a non-@Nullable @Provides method"

    .line 9
    invoke-static {v0, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzs;->zza:Lcom/google/android/play/core/internal/zzcs;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzu;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzu;->zzb()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzs;->zzb:Lcom/google/android/play/core/internal/zzcs;

    invoke-interface {p0}, Lcom/google/android/play/core/internal/zzcs;->zza()Ljava/lang/Object;

    move-result-object p0

    .line 11
    new-instance v1, Lcom/google/android/play/core/assetpacks/zzbh;

    check-cast p0, Lcom/google/android/play/core/assetpacks/zzed;

    invoke-direct {v1, v0, p0}, Lcom/google/android/play/core/assetpacks/zzbh;-><init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/zzed;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
