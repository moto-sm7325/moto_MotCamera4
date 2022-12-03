.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "FilterMeisheViewModel.kt"


# instance fields
.field public filterLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public selectedFilter:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public shouldUpdateAllThumbnails:Z

.field public shouldUpdateThumbnails:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->filterLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->selectedFilter:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method
