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

    .prologue
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

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

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

    .prologue
    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    .line 40
    new-instance p2, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p2}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p2, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 42
    new-instance p2, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-direct {p2}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;-><init>()V

    iput-object p2, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    .line 47
    new-instance p2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    invoke-direct {p2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;-><init>()V

    iput-object p2, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    .line 48
    move-object p2, p0

    check-cast p2, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .prologue
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 38
    check-cast p2, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$checkIfGetStaticComplete(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .prologue
    .line 38
    iget-object p0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getMStaticHelper$p(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;
    .locals 0

    .prologue
    .line 38
    iget-object p0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    return-object p0
.end method

.method public static final synthetic access$handleAndroidVersionFileOnError(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->handleAndroidVersionFileOnError(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$handleBlackListFileOnError(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->handleBlackListFileOnError(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$handleFaqFileOnError(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->handleFaqFileOnError(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$handleGetAndroidFileOnError(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->handleGetAndroidFileOnError(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$handleGetMutualDictionaryFileOnError(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->handleGetMutualDictionaryFileOnError(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$handleGetMutualFileOnError(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->handleGetMutualFileOnError(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$handleGetSideMenuFileOnError(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->handleGetSideMenuFileOnError(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$setCallback$p(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$setMStaticHelper$p(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    return-void
.end method

.method private final checkIfGetStaticComplete()V
    .locals 2

    .prologue
    .line 483
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

    .line 484
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

    .prologue
    .line 367
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;->getRemoteAndroidStaticData()Lio/reactivex/Single;

    move-result-object v0

    .line 368
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getAndroidFilesFromServer$1;

    invoke-direct {v1, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getAndroidFilesFromServer$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRem\u2026 it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getAndroidStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 3
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

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v0, :cond_0

    const-string v1, "android.json"

    const-class v2, Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidStaticData;

    invoke-virtual {v0, p1, v1, v2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidStaticData;

    :cond_0
    invoke-static {v1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "Single.just(mStaticHelpe\u2026dStaticData::class.java))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v0, :cond_2

    const-string v1, "android.json"

    const-class v2, Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidStaticData;

    invoke-virtual {v0, p1, v1, v2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidStaticData;

    :cond_2
    invoke-static {v1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "Single.just(mStaticHelpe\u2026dStaticData::class.java))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

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

    .prologue
    .line 397
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;->getRemoteAndroidVersion()Lio/reactivex/Single;

    move-result-object v0

    .line 398
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getAndroidVersionFromServer$1;

    invoke-direct {v1, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getAndroidVersionFromServer$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRem\u2026 it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getAndroidVersionStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 3
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

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v0, :cond_0

    const-string v1, "android_version.json"

    const-class v2, Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidVersion;

    invoke-virtual {v0, p1, v1, v2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidVersion;

    :cond_0
    invoke-static {v1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "Single.just(mStaticHelpe\u2026roidVersion::class.java))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v0, :cond_2

    const-string v1, "android_version.json"

    const-class v2, Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidVersion;

    invoke-virtual {v0, p1, v1, v2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidVersion;

    :cond_2
    invoke-static {v1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "Single.just(mStaticHelpe\u2026roidVersion::class.java))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

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

    .prologue
    .line 407
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;->getRemoteBlackListPhones()Lio/reactivex/Single;

    move-result-object v0

    .line 408
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getBlackListFromServer$1;

    invoke-direct {v1, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getBlackListFromServer$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRem\u2026 it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getBlackListStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 3
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

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v0, :cond_0

    const-string v1, "black_list_phones.json"

    const-class v2, Lcom/ideomobile/hapoalim/model/staticdata/android/BlackListPhones;

    invoke-virtual {v0, p1, v1, v2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ideomobile/hapoalim/model/staticdata/android/BlackListPhones;

    :cond_0
    invoke-static {v1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "Single.just(mStaticHelpe\u2026kListPhones::class.java))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v0, :cond_2

    const-string v1, "black_list_phones.json"

    const-class v2, Lcom/ideomobile/hapoalim/model/staticdata/android/BlackListPhones;

    invoke-virtual {v0, p1, v1, v2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ideomobile/hapoalim/model/staticdata/android/BlackListPhones;

    :cond_2
    invoke-static {v1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "Single.just(mStaticHelpe\u2026kListPhones::class.java))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final getGeneralFAQStorage(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;
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

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v0, :cond_0

    const-class v1, Lcom/ideomobile/hapoalim/model/FaqItem;

    invoke-virtual {v0, p1, p2, v1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ideomobile/hapoalim/model/FaqItem;

    :cond_0
    invoke-static {v1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "Single.just(mStaticHelpe\u2026me, FaqItem::class.java))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v0, :cond_2

    const-class v1, Lcom/ideomobile/hapoalim/model/FaqItem;

    invoke-virtual {v0, p1, p2, v1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ideomobile/hapoalim/model/FaqItem;

    :cond_2
    invoke-static {v1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "Single.just(mStaticHelpe\u2026me, FaqItem::class.java))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public static synthetic getGeneralFaqByFileName$default(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .prologue
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 317
    check-cast p3, Lkotlin/jvm/functions/Function1;

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

    .prologue
    .line 377
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0, p2}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;->getRemoteGeneralFaqFilesData(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 378
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getGeneralFaqFilesFromServer$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getGeneralFaqFilesFromServer$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/String;)V

    check-cast v1, Lio/reactivex/functions/Function;

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

    .prologue
    .line 357
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;->getRemoteMutualDictData()Lio/reactivex/Single;

    move-result-object v0

    .line 358
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getMutualDictFromServer$1;

    invoke-direct {v1, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getMutualDictFromServer$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRem\u2026 it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getMutualDictionaryStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 3
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

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v0, :cond_0

    const-string v1, "mutual_dictionary.json"

    const-class v2, Lcom/ideomobile/hapoalim/model/staticdata/genders/GenderMutualError;

    invoke-virtual {v0, p1, v1, v2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ideomobile/hapoalim/model/staticdata/genders/GenderMutualError;

    :cond_0
    invoke-static {v1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "Single.just(mStaticHelpe\u2026MutualError::class.java))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v0, :cond_2

    const-string v1, "mutual_dictionary.json"

    const-class v2, Lcom/ideomobile/hapoalim/model/staticdata/genders/GenderMutualError;

    invoke-virtual {v0, p1, v1, v2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ideomobile/hapoalim/model/staticdata/genders/GenderMutualError;

    :cond_2
    invoke-static {v1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "Single.just(mStaticHelpe\u2026MutualError::class.java))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

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

    .prologue
    .line 348
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;->getRemoteMutualStaticData()Lio/reactivex/Single;

    move-result-object v0

    .line 349
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getMutualFilesFromServer$1;

    invoke-direct {v1, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getMutualFilesFromServer$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    check-cast v1, Lio/reactivex/functions/Function;

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

    .prologue
    .line 388
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;->getRemoteMutualSideMenuData()Lio/reactivex/Single;

    move-result-object v0

    .line 389
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getMutualSideMenuFromServer$1;

    invoke-direct {v1, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getMutualSideMenuFromServer$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRem\u2026 it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getMutualSideMenuStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 3
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

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v0, :cond_0

    const-string v1, "mutual_menu_actions.json"

    const-class v2, Lcom/ideomobile/hapoalim/model/staticdata/mutual/SideMenuData;

    invoke-virtual {v0, p1, v1, v2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ideomobile/hapoalim/model/staticdata/mutual/SideMenuData;

    :cond_0
    invoke-static {v1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "Single.just(mStaticHelpe\u2026ideMenuData::class.java))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v0, :cond_2

    const-string v1, "mutual_menu_actions.json"

    const-class v2, Lcom/ideomobile/hapoalim/model/staticdata/mutual/SideMenuData;

    invoke-virtual {v0, p1, v1, v2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ideomobile/hapoalim/model/staticdata/mutual/SideMenuData;

    :cond_2
    invoke-static {v1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "Single.just(mStaticHelpe\u2026ideMenuData::class.java))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final getMutualStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 3
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

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v0, :cond_0

    const-string v1, "mutual.json"

    const-class v2, Lcom/ideomobile/hapoalim/model/staticdata/mutual/MutualStaticData;

    invoke-virtual {v0, p1, v1, v2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ideomobile/hapoalim/model/staticdata/mutual/MutualStaticData;

    :cond_0
    invoke-static {v1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "Single.just(mStaticHelpe\u2026lStaticData::class.java))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v0, :cond_2

    const-string v1, "mutual.json"

    const-class v2, Lcom/ideomobile/hapoalim/model/staticdata/mutual/MutualStaticData;

    invoke-virtual {v0, p1, v1, v2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ideomobile/hapoalim/model/staticdata/mutual/MutualStaticData;

    :cond_2
    invoke-static {v1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "Single.just(mStaticHelpe\u2026lStaticData::class.java))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final handleAndroidVersionFileOnError(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getAndroidVersionStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 255
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 256
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 257
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleAndroidVersionFileOnError$1;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleAndroidVersionFileOnError$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 264
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleAndroidVersionFileOnError$2;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleAndroidVersionFileOnError$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    .line 257
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 254
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final handleBlackListFileOnError(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getBlackListStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 302
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 303
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 304
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleBlackListFileOnError$1;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleBlackListFileOnError$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 311
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleBlackListFileOnError$2;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleBlackListFileOnError$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    .line 304
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 301
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

    .prologue
    .line 271
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1, p2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getGeneralFAQStorage(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 272
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 273
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 274
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleFaqFileOnError$1;

    invoke-direct {v1, p2, p3}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleFaqFileOnError$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 287
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleFaqFileOnError$2;

    invoke-direct {v2, p2, p3}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleFaqFileOnError$2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    .line 274
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 271
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final handleGetAndroidFileOnError(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getAndroidStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 180
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 181
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 182
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetAndroidFileOnError$1;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetAndroidFileOnError$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 189
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetAndroidFileOnError$2;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetAndroidFileOnError$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    .line 182
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 179
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final handleGetMutualDictionaryFileOnError(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualDictionaryStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 216
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 217
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 218
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualDictionaryFileOnError$1;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualDictionaryFileOnError$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 226
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualDictionaryFileOnError$2;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualDictionaryFileOnError$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    .line 218
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 215
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final handleGetMutualFileOnError(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 197
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 198
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 199
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualFileOnError$1;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualFileOnError$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 207
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualFileOnError$2;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualFileOnError$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    .line 199
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 196
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final handleGetSideMenuFileOnError(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualSideMenuStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 237
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 238
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 239
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetSideMenuFileOnError$1;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetSideMenuFileOnError$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 246
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetSideMenuFileOnError$2;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetSideMenuFileOnError$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    .line 239
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 236
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final sourceManager(Landroid/content/Context;)V
    .locals 9

    .prologue
    .line 57
    sget-object v0, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->INSTANCE:Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;

    const-string v1, "static_offline"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v3}, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->preference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-result-object v0

    sget-object v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v1, v1, v2

    const/4 v3, 0x0

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    .line 60
    iget-boolean v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getAndroidStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_0
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getAndroidFilesFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v0

    .line 64
    :goto_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 65
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$android$1;

    invoke-direct {v1, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$android$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 73
    new-instance v3, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$android$2;

    invoke-direct {v3, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$android$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    check-cast v3, Lio/reactivex/functions/Consumer;

    .line 66
    invoke-virtual {v0, v1, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 79
    iget-boolean v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v1, :cond_1

    .line 80
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v1

    goto :goto_1

    .line 82
    :cond_1
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualFilesFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v1

    .line 83
    :goto_1
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 84
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 85
    new-instance v3, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$mutual$1;

    invoke-direct {v3, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$mutual$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    check-cast v3, Lio/reactivex/functions/Consumer;

    .line 92
    new-instance v4, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$mutual$2;

    invoke-direct {v4, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$mutual$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    check-cast v4, Lio/reactivex/functions/Consumer;

    .line 85
    invoke-virtual {v1, v3, v4}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 98
    iget-boolean v3, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v3, :cond_2

    .line 99
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualDictionaryStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v3

    goto :goto_2

    .line 101
    :cond_2
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualDictFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v3

    .line 102
    :goto_2
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v3

    .line 103
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v3

    .line 104
    new-instance v4, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$dict$1;

    invoke-direct {v4, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$dict$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    check-cast v4, Lio/reactivex/functions/Consumer;

    .line 111
    new-instance v5, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$dict$2;

    invoke-direct {v5, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$dict$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    check-cast v5, Lio/reactivex/functions/Consumer;

    .line 104
    invoke-virtual {v3, v4, v5}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v3

    .line 118
    iget-boolean v4, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v4, :cond_3

    .line 119
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualSideMenuStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v4

    goto :goto_3

    .line 121
    :cond_3
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualSideMenuFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v4

    .line 122
    :goto_3
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v4

    .line 123
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v4

    .line 124
    new-instance v5, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$sideMenu$1;

    invoke-direct {v5, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$sideMenu$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    check-cast v5, Lio/reactivex/functions/Consumer;

    .line 131
    new-instance v6, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$sideMenu$2;

    invoke-direct {v6, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$sideMenu$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    check-cast v6, Lio/reactivex/functions/Consumer;

    .line 124
    invoke-virtual {v4, v5, v6}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v4

    .line 137
    iget-boolean v5, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v5, :cond_4

    .line 138
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getAndroidVersionStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v5

    goto :goto_4

    .line 140
    :cond_4
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getAndroidVersionFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v5

    .line 141
    :goto_4
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v5

    .line 142
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v5

    .line 143
    new-instance v6, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$version$1;

    invoke-direct {v6, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$version$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    check-cast v6, Lio/reactivex/functions/Consumer;

    .line 150
    new-instance v7, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$version$2;

    invoke-direct {v7, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$version$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    check-cast v7, Lio/reactivex/functions/Consumer;

    .line 143
    invoke-virtual {v5, v6, v7}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v5

    .line 155
    iget-boolean v6, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v6, :cond_5

    .line 156
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getBlackListStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v6

    goto :goto_5

    .line 158
    :cond_5
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getBlackListFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v6

    .line 159
    :goto_5
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v6

    .line 160
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v6

    .line 161
    new-instance v7, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$blackList$1;

    invoke-direct {v7, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$blackList$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    check-cast v7, Lio/reactivex/functions/Consumer;

    .line 168
    new-instance v8, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$blackList$2;

    invoke-direct {v8, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$blackList$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    check-cast v8, Lio/reactivex/functions/Consumer;

    .line 161
    invoke-virtual {v6, v7, v8}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 174
    iget-object v6, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const/4 v7, 0x6

    new-array v7, v7, [Lio/reactivex/disposables/Disposable;

    aput-object v3, v7, v2

    const/4 v2, 0x1

    aput-object v0, v7, v2

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const/4 v0, 0x3

    aput-object v4, v7, v0

    const/4 v0, 0x4

    aput-object v5, v7, v0

    const/4 v0, 0x5

    aput-object p1, v7, v0

    invoke-virtual {v6, v7}, Lio/reactivex/disposables/CompositeDisposable;->addAll([Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .prologue
    const-string v0, "StaticManager"

    const-string v1, "Clear"

    .line 470
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    const/4 v0, 0x0

    .line 472
    move-object v1, v0

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iput-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    .line 473
    check-cast v0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

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

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    iget-boolean v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 320
    invoke-direct {p0, p1, p2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getGeneralFAQStorage(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getGeneralFaqFilesFromServer(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 323
    :goto_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 324
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 325
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getGeneralFaqByFileName$terminalFaq$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getGeneralFaqByFileName$terminalFaq$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroid/content/Context;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 339
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getGeneralFaqByFileName$terminalFaq$2;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getGeneralFaqByFileName$terminalFaq$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    .line 325
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 343
    iget-object p2, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 1

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->sourceManager(Landroid/content/Context;)V

    return-void
.end method
