.class public final Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;
.super Ljava/lang/Object;
.source "StaticManager.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private mIsStaticOffline:Z

.field private mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

.field private mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference0Impl;

    const-class v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "staticOffLine"

    const-string v4, "<v#0>"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    .line 42
    new-instance p2, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p2}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p2, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 44
    new-instance p2, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-direct {p2}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;-><init>()V

    iput-object p2, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    .line 49
    new-instance p2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    invoke-direct {p2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;-><init>()V

    iput-object p2, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    .line 50
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 40
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$checkIfGetStaticComplete(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getMIsStaticOffline$p(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    return p0
.end method

.method public static final synthetic access$getMStaticHelper$p(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    return-object p0
.end method

.method public static final synthetic access$handleAndroidVersionFileOnError(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->handleAndroidVersionFileOnError(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$handleFaqFileOnError(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->handleFaqFileOnError(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$handleGetAndroidFileOnError(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->handleGetAndroidFileOnError(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$setCallback$p(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$setMIsStaticOffline$p(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    return-void
.end method

.method public static final synthetic access$setMStaticHelper$p(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    return-void
.end method

.method private final checkIfGetStaticComplete()V
    .locals 2

    .line 479
    sget-object v0, Lcom/ideomobile/hapoalim/data/StaticDataManager;->INSTANCE:Lcom/ideomobile/hapoalim/data/StaticDataManager;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/data/StaticDataManager;->getMAndroidKeys()Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidStaticData;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ideomobile/hapoalim/data/StaticDataManager;->INSTANCE:Lcom/ideomobile/hapoalim/data/StaticDataManager;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/data/StaticDataManager;->getMutualStaticData()Lcom/ideomobile/hapoalim/model/staticdata/mutual/MutualStaticData;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ideomobile/hapoalim/data/StaticDataManager;->INSTANCE:Lcom/ideomobile/hapoalim/data/StaticDataManager;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/data/StaticDataManager;->getMTextDictionary()Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ideomobile/hapoalim/data/StaticDataManager;->INSTANCE:Lcom/ideomobile/hapoalim/data/StaticDataManager;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/data/StaticDataManager;->getMSideMenuData()Lcom/ideomobile/hapoalim/model/staticdata/mutual/SideMenuData;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ideomobile/hapoalim/data/StaticDataManager;->INSTANCE:Lcom/ideomobile/hapoalim/data/StaticDataManager;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/data/StaticDataManager;->getMAndroidVersion()Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidVersion;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ideomobile/hapoalim/data/StaticDataManager;->INSTANCE:Lcom/ideomobile/hapoalim/data/StaticDataManager;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/data/StaticDataManager;->getMBlackListPhones()Lcom/ideomobile/hapoalim/model/staticdata/android/BlackListPhones;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method private final getAndroidFilesFromServer(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidStaticData;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;->getRemoteAndroidStaticData()Lio/reactivex/Single;

    move-result-object v0

    .line 295
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getAndroidFilesFromServer$1;

    invoke-direct {v1, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getAndroidFilesFromServer$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRem\u2026 it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getAndroidStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidStaticData;",
            ">;"
        }
    .end annotation

    .line 353
    const-class v0, Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidStaticData;

    iget-boolean v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const-string v2, "Single.just(mStaticHelpe\u2026dStaticData::class.java))"

    const-string v3, "android.json"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 354
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidStaticData;

    :cond_0
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_1
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidStaticData;

    :cond_2
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final getAndroidVersionFromServer(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidVersion;",
            ">;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;->getRemoteAndroidVersion()Lio/reactivex/Single;

    move-result-object v0

    .line 325
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getAndroidVersionFromServer$1;

    invoke-direct {v1, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getAndroidVersionFromServer$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRem\u2026 it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getAndroidVersionStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidVersion;",
            ">;"
        }
    .end annotation

    .line 381
    const-class v0, Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidVersion;

    iget-boolean v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const-string v2, "Single.just(mStaticHelpe\u2026roidVersion::class.java))"

    const-string v3, "android_version.json"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidVersion;

    :cond_0
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidVersion;

    :cond_2
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final getBlackListFromServer(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/android/BlackListPhones;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;->getRemoteBlackListPhones()Lio/reactivex/Single;

    move-result-object v0

    .line 335
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getBlackListFromServer$1;

    invoke-direct {v1, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getBlackListFromServer$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRem\u2026 it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getBlackListStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/android/BlackListPhones;",
            ">;"
        }
    .end annotation

    .line 388
    const-class v0, Lcom/ideomobile/hapoalim/model/staticdata/android/BlackListPhones;

    iget-boolean v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const-string v2, "Single.just(mStaticHelpe\u2026kListPhones::class.java))"

    const-string v3, "black_list_phones.json"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/android/BlackListPhones;

    :cond_0
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_1
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/android/BlackListPhones;

    :cond_2
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final getFirstFromStorage(Landroid/content/Context;)V
    .locals 6

    .line 406
    iget-boolean v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 407
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v0

    goto :goto_0

    .line 409
    :cond_0
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->handleGetMutualFileOnError(Landroid/content/Context;)V

    .line 410
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualFilesFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v0

    .line 411
    :goto_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 412
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 413
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$mutual$1;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$mutual$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 418
    sget-object v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$mutual$2;->INSTANCE:Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$mutual$2;

    .line 413
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 422
    iget-boolean v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v1, :cond_1

    .line 423
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualDictionaryStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v1

    goto :goto_1

    .line 425
    :cond_1
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->handleGetMutualDictionaryFileOnError(Landroid/content/Context;)V

    .line 426
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualDictFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v1

    .line 427
    :goto_1
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 428
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 429
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$dict$1;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$dict$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 434
    sget-object v3, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$dict$2;->INSTANCE:Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$dict$2;

    .line 429
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 438
    iget-boolean v2, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v2, :cond_2

    .line 439
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualSideMenuStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v2

    goto :goto_2

    .line 441
    :cond_2
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->handleGetSideMenuFileOnError(Landroid/content/Context;)V

    .line 442
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualSideMenuFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v2

    .line 443
    :goto_2
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 444
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 445
    new-instance v3, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$sideMenu$1;

    invoke-direct {v3, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$sideMenu$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 450
    sget-object v4, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$sideMenu$2;->INSTANCE:Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$sideMenu$2;

    .line 445
    invoke-virtual {v2, v3, v4}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 454
    iget-boolean v3, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v3, :cond_3

    .line 455
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getBlackListStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    goto :goto_3

    .line 457
    :cond_3
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->handleBlackListFileOnError(Landroid/content/Context;)V

    .line 458
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getBlackListFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 459
    :goto_3
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 460
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 461
    new-instance v3, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$blackList$1;

    invoke-direct {v3, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$blackList$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 466
    sget-object v4, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$blackList$2;->INSTANCE:Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$blackList$2;

    .line 461
    invoke-virtual {p1, v3, v4}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 469
    iget-object v3, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const/4 v4, 0x4

    new-array v4, v4, [Lio/reactivex/disposables/Disposable;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object p1, v4, v0

    invoke-virtual {v3, v4}, Lio/reactivex/disposables/CompositeDisposable;->addAll([Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final getGeneralFAQStorage(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/FaqItem;",
            ">;"
        }
    .end annotation

    .line 367
    const-class v0, Lcom/ideomobile/hapoalim/model/FaqItem;

    iget-boolean v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const-string v2, "Single.just(mStaticHelpe\u2026me, FaqItem::class.java))"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/ideomobile/hapoalim/model/FaqItem;

    :cond_0
    invoke-static {v3}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/ideomobile/hapoalim/model/FaqItem;

    :cond_2
    invoke-static {v3}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public static synthetic getGeneralFaqByFileName$default(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 244
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getGeneralFaqByFileName(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final getGeneralFaqFilesFromServer(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/FaqItem;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0, p2}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;->getRemoteGeneralFaqFilesData(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 305
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getGeneralFaqFilesFromServer$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getGeneralFaqFilesFromServer$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "mStaticLoaderImpl.getRem\u2026 it\n                    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getMutualDictFromServer(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/genders/GenderMutualError;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;->getRemoteMutualDictData()Lio/reactivex/Single;

    move-result-object v0

    .line 285
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getMutualDictFromServer$1;

    invoke-direct {v1, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getMutualDictFromServer$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRem\u2026 it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getMutualDictionaryStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/genders/GenderMutualError;",
            ">;"
        }
    .end annotation

    .line 360
    const-class v0, Lcom/ideomobile/hapoalim/model/staticdata/genders/GenderMutualError;

    iget-boolean v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const-string v2, "Single.just(mStaticHelpe\u2026MutualError::class.java))"

    const-string v3, "mutual_dictionary_new.json"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 361
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/genders/GenderMutualError;

    :cond_0
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/genders/GenderMutualError;

    :cond_2
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final getMutualFilesFromServer(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/mutual/MutualStaticData;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;->getRemoteMutualStaticData()Lio/reactivex/Single;

    move-result-object v0

    .line 276
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getMutualFilesFromServer$1;

    invoke-direct {v1, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getMutualFilesFromServer$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRem\u2026 it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getMutualSideMenuFromServer(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/mutual/SideMenuData;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;->getRemoteMutualSideMenuData()Lio/reactivex/Single;

    move-result-object v0

    .line 316
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getMutualSideMenuFromServer$1;

    invoke-direct {v1, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getMutualSideMenuFromServer$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRem\u2026 it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getMutualSideMenuStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/mutual/SideMenuData;",
            ">;"
        }
    .end annotation

    .line 374
    const-class v0, Lcom/ideomobile/hapoalim/model/staticdata/mutual/SideMenuData;

    iget-boolean v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const-string v2, "Single.just(mStaticHelpe\u2026ideMenuData::class.java))"

    const-string v3, "mutual_menu_actions.json"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/mutual/SideMenuData;

    :cond_0
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_1
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/mutual/SideMenuData;

    :cond_2
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final getMutualStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/mutual/MutualStaticData;",
            ">;"
        }
    .end annotation

    .line 345
    const-class v0, Lcom/ideomobile/hapoalim/model/staticdata/mutual/MutualStaticData;

    iget-boolean v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const-string v2, "Single.just(mStaticHelpe\u2026lStaticData::class.java))"

    const-string v3, "mutual.json"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/mutual/MutualStaticData;

    :cond_0
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/mutual/MutualStaticData;

    :cond_2
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final handleAndroidVersionFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getAndroidVersionStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 182
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 183
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 184
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleAndroidVersionFileOnError$1;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleAndroidVersionFileOnError$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 191
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleAndroidVersionFileOnError$2;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleAndroidVersionFileOnError$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 184
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 181
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final handleBlackListFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getBlackListStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 229
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 230
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 231
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleBlackListFileOnError$1;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleBlackListFileOnError$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 238
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleBlackListFileOnError$2;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleBlackListFileOnError$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 231
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 228
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final handleFaqFileOnError(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/ideomobile/hapoalim/model/FaqItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1, p2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getGeneralFAQStorage(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 199
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 200
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 201
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleFaqFileOnError$1;

    invoke-direct {v1, p2, p3}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleFaqFileOnError$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 214
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleFaqFileOnError$2;

    invoke-direct {v2, p2, p3}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleFaqFileOnError$2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 201
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 198
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final handleGetAndroidFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getAndroidStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 107
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 108
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 109
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetAndroidFileOnError$1;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetAndroidFileOnError$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 116
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetAndroidFileOnError$2;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetAndroidFileOnError$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 109
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 106
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final handleGetMutualDictionaryFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualDictionaryStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 143
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 144
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 145
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualDictionaryFileOnError$1;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualDictionaryFileOnError$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 153
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualDictionaryFileOnError$2;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualDictionaryFileOnError$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 145
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 142
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final handleGetMutualFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 124
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 125
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 126
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualFileOnError$1;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualFileOnError$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 134
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualFileOnError$2;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualFileOnError$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 126
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 123
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final handleGetSideMenuFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualSideMenuStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 164
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 165
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 166
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetSideMenuFileOnError$1;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetSideMenuFileOnError$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 173
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetSideMenuFileOnError$2;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetSideMenuFileOnError$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 166
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 163
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final sourceManager(Landroid/content/Context;)V
    .locals 5

    .line 59
    sget-object v0, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->INSTANCE:Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "static_offline"

    invoke-virtual {v0, p1, v3, v2}, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->preference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-result-object v0

    sget-object v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    .line 60
    invoke-virtual {v0, v3, v2}, Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    .line 62
    iget-boolean v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getAndroidStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_0
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getAndroidFilesFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v0

    .line 66
    :goto_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 67
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 68
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$android$1;

    invoke-direct {v2, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$android$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    .line 75
    new-instance v3, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$android$2;

    invoke-direct {v3, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$android$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    .line 68
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 81
    iget-boolean v2, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v2, :cond_1

    .line 82
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getAndroidVersionStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v2

    goto :goto_1

    .line 84
    :cond_1
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getAndroidVersionFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v2

    .line 85
    :goto_1
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 86
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 87
    new-instance v3, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$version$1;

    invoke-direct {v3, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$version$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    .line 94
    new-instance v4, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$version$2;

    invoke-direct {v4, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$version$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    .line 87
    invoke-virtual {v2, v3, v4}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 99
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getFirstFromStorage(Landroid/content/Context;)V

    .line 101
    iget-object p1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/reactivex/disposables/Disposable;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-virtual {p1, v3}, Lio/reactivex/disposables/CompositeDisposable;->addAll([Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "StaticManager"

    const-string v1, "Clear"

    .line 397
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    const/4 v0, 0x0

    .line 399
    iput-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    .line 400
    iput-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    return-void
.end method

.method public final getGeneralFaqByFileName(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/ideomobile/hapoalim/model/FaqItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iget-boolean v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getGeneralFAQStorage(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    goto :goto_0

    .line 249
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getGeneralFaqFilesFromServer(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 250
    :goto_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 251
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 252
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getGeneralFaqByFileName$terminalFaq$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getGeneralFaqByFileName$terminalFaq$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroid/content/Context;)V

    .line 266
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getGeneralFaqByFileName$terminalFaq$2;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getGeneralFaqByFileName$terminalFaq$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 252
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 270
    iget-object p2, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->sourceManager(Landroid/content/Context;)V

    return-void
.end method
