.class public final synthetic Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda11;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda11;-><init>()V

    sput-object v0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda11;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda11;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/motorola/camera/VideoFormat;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    .line 1
    sget-object p0, Lcom/motorola/camera/VideoFormat;->UHD_8K_SIZES:Ljava/util/List;

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
