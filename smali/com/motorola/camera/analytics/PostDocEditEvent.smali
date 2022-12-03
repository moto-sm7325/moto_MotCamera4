.class public Lcom/motorola/camera/analytics/PostDocEditEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "PostDocEditEvent.java"


# static fields
.field public static final ADJUSTED_EDGES:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILTER:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATED:Lcom/motorola/camera/analytics/Attributes/iAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/analytics/Attributes/iAttribute<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "EDGES"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostDocEditEvent;->ADJUSTED_EDGES:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 2
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "ROTATE"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostDocEditEvent;->ROTATED:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 3
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    const-string v1, "FILTER"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostDocEditEvent;->FILTER:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/analytics/LogEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public addData(Lcom/google/android/gms/common/api/internal/zaz;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 1

    const-string p0, "ANALYTICS_DOC_EDITOR_FILTER"

    .line 1
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/zaz;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object p3, Lcom/motorola/camera/analytics/PostDocEditEvent;->ADJUSTED_EDGES:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    const-string v0, "ANALYTICS_DOC_EDITOR_EDGES"

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/zaz;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    check-cast p3, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 5
    invoke-virtual {p3, p2, v0}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    .line 6
    sget-object p3, Lcom/motorola/camera/analytics/PostDocEditEvent;->ROTATED:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    const-string v0, "ANALYTICS_DOC_EDITOR_ROTATE"

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/zaz;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    check-cast p3, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    .line 9
    invoke-virtual {p3, p2, v0}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    .line 10
    sget-object p3, Lcom/motorola/camera/analytics/PostDocEditEvent;->FILTER:Lcom/motorola/camera/analytics/Attributes/iAttribute;

    .line 11
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/zaz;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p3, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;

    .line 13
    invoke-virtual {p3, p2, p0}, Lcom/motorola/camera/analytics/Attributes/IntegerAttribute;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    return-void
.end method

.method public getEventType$enumunboxing$()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.0"

    return-object p0
.end method
