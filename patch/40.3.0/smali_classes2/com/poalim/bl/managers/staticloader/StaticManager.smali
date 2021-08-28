.class public final Lcom/poalim/bl/managers/staticloader/StaticManager;
.super Ljava/lang/Object;
.source "StaticManager.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


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

.field private mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

.field private mStaticLoaderImpl:Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 62
    new-instance v1, Lkotlin/jvm/internal/PropertyReference0Impl;

    const-class v2, Lcom/poalim/bl/managers/staticloader/StaticManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "staticOffLine"

    const-string v4, "<v#0>"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/poalim/bl/managers/staticloader/StaticManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    .line 45
    new-instance p2, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p2}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p2, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 47
    new-instance p2, Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;

    invoke-direct {p2}, Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;-><init>()V

    iput-object p2, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;

    .line 52
    new-instance p2, Lcom/poalim/bl/managers/staticloader/StaticHelper;

    invoke-direct {p2}, Lcom/poalim/bl/managers/staticloader/StaticHelper;-><init>()V

    iput-object p2, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    .line 53
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 43
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final checkIfGetStaticComplete()V
    .locals 2

    .line 542
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0}, Lcom/poalim/bl/data/StaticDataManager;->getMAndroidKeys()Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 543
    invoke-virtual {v0}, Lcom/poalim/bl/data/StaticDataManager;->getMutualStaticData()Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 544
    invoke-virtual {v0}, Lcom/poalim/bl/data/StaticDataManager;->getMTextDictionary()Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 545
    invoke-virtual {v0}, Lcom/poalim/bl/data/StaticDataManager;->getMSideMenuData()Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 546
    invoke-virtual {v0}, Lcom/poalim/bl/data/StaticDataManager;->getMAndroidVersion()Lcom/poalim/bl/model/staticdata/android/AndroidVersion;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 547
    invoke-virtual {v0}, Lcom/poalim/bl/data/StaticDataManager;->getMBlackListPhones()Lcom/poalim/bl/model/staticdata/android/BlackListPhones;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 548
    invoke-virtual {v0}, Lcom/poalim/bl/data/StaticDataManager;->getMMultiActionData()Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
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
            "Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;",
            ">;"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;->getRemoteAndroidStaticData()Lio/reactivex/Single;

    move-result-object v0

    .line 331
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$zE84yHVmkWH8mypq0x5P8In5Kmw;

    invoke-direct {v1, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$zE84yHVmkWH8mypq0x5P8In5Kmw;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRemoteAndroidStaticData()\n                    .map {\n                        mStaticHelper?.saveFileToLocalStorage(context, STATIC_ANDROID_FILE_PREFIX, it)\n                        it.isSuccess = true\n                        Log.e(STATIC_ANDROID_FILE_PREFIX, it.toString())\n\n                        return@map it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getAndroidFilesFromServer$lambda-25(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;)Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    const-string v0, "android.json"

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->saveFileToLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    .line 333
    iput-boolean p0, p2, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    .line 334
    invoke-virtual {p2}, Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private final getAndroidStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;",
            ">;"
        }
    .end annotation

    .line 398
    const-class v0, Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;

    iget-boolean v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v2, 0x0

    const-string v3, "android.json"

    if-eqz v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;

    :goto_0
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromAssets(context, STATIC_ANDROID_FILE_PREFIX, AndroidStaticData::class.java))\n            }"

    .line 398
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 401
    :cond_1
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;

    :goto_1
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromLocalStorage(context, STATIC_ANDROID_FILE_PREFIX, AndroidStaticData::class.java))\n            }"

    .line 400
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
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
            "Lcom/poalim/bl/model/staticdata/android/AndroidVersion;",
            ">;"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;->getRemoteAndroidVersion()Lio/reactivex/Single;

    move-result-object v0

    .line 370
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$RFvtTgppfm3IOKgCm0rL--l-ahM;

    invoke-direct {v1, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$RFvtTgppfm3IOKgCm0rL--l-ahM;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRemoteAndroidVersion()\n                    .map {\n                        mStaticHelper?.saveFileToLocalStorage(context, STATIC_ANDROID_VERSION, it)\n                        it.isSuccess = true\n                        Log.e(STATIC_ANDROID_VERSION, it.toString())\n                        return@map it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getAndroidVersionFromServer$lambda-29(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidVersion;)Lcom/poalim/bl/model/staticdata/android/AndroidVersion;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    const-string v0, "android_version.json"

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->saveFileToLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    .line 372
    iput-boolean p0, p2, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    .line 373
    invoke-virtual {p2}, Lcom/poalim/bl/model/staticdata/android/AndroidVersion;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private final getAndroidVersionStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/staticdata/android/AndroidVersion;",
            ">;"
        }
    .end annotation

    .line 426
    const-class v0, Lcom/poalim/bl/model/staticdata/android/AndroidVersion;

    iget-boolean v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v2, 0x0

    const-string v3, "android_version.json"

    if-eqz v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/android/AndroidVersion;

    :goto_0
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromAssets(context, STATIC_ANDROID_VERSION, AndroidVersion::class.java))\n            }"

    .line 426
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 429
    :cond_1
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/android/AndroidVersion;

    :goto_1
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromLocalStorage(context, STATIC_ANDROID_VERSION, AndroidVersion::class.java))\n            }"

    .line 428
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
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
            "Lcom/poalim/bl/model/staticdata/android/BlackListPhones;",
            ">;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;->getRemoteBlackListPhones()Lio/reactivex/Single;

    move-result-object v0

    .line 380
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$frvny7kGVIxV2HlhDzudmmwzTdU;

    invoke-direct {v1, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$frvny7kGVIxV2HlhDzudmmwzTdU;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRemoteBlackListPhones()\n                    .map {\n                        mStaticHelper?.saveFileToLocalStorage(context, STATIC_BLACK_LIST_PHONES, it)\n                        it.isSuccess = true\n                        Log.e(STATIC_BLACK_LIST_PHONES, it.toString())\n                        return@map it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getBlackListFromServer$lambda-30(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/BlackListPhones;)Lcom/poalim/bl/model/staticdata/android/BlackListPhones;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    const-string v0, "black_list_phones.json"

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->saveFileToLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    .line 382
    iput-boolean p0, p2, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    .line 383
    invoke-virtual {p2}, Lcom/poalim/bl/model/staticdata/android/BlackListPhones;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private final getBlackListStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/staticdata/android/BlackListPhones;",
            ">;"
        }
    .end annotation

    .line 433
    const-class v0, Lcom/poalim/bl/model/staticdata/android/BlackListPhones;

    iget-boolean v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v2, 0x0

    const-string v3, "black_list_phones.json"

    if-eqz v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/android/BlackListPhones;

    :goto_0
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromAssets(context, STATIC_BLACK_LIST_PHONES, BlackListPhones::class.java))\n            }"

    .line 433
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/android/BlackListPhones;

    :goto_1
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromLocalStorage(context, STATIC_BLACK_LIST_PHONES, BlackListPhones::class.java))\n            }"

    .line 435
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method private final getFirstFromStorage(Landroid/content/Context;)V
    .locals 7

    .line 458
    iget-boolean v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 459
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v0

    goto :goto_0

    .line 461
    :cond_0
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetMutualFileOnError(Landroid/content/Context;)V

    .line 462
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualFilesFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v0

    .line 463
    :goto_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 464
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 465
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$8Fh4AjSpms_MoPrto1picMcbf7E;

    invoke-direct {v1, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$8Fh4AjSpms_MoPrto1picMcbf7E;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    sget-object v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$40zsS9W0-6UbSW3lu4UEvVpHBIw;->INSTANCE:Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$40zsS9W0-6UbSW3lu4UEvVpHBIw;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 474
    iget-boolean v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v1, :cond_1

    .line 475
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualDictionaryStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v1

    goto :goto_1

    .line 477
    :cond_1
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetMutualDictionaryFileOnError(Landroid/content/Context;)V

    .line 478
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualDictFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v1

    .line 479
    :goto_1
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 480
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 481
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$QJtOxZh8-tC5-CwN8svtwRa_nTQ;

    invoke-direct {v2, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$QJtOxZh8-tC5-CwN8svtwRa_nTQ;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    sget-object v3, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$t_g1wNcy28QqudA-vbrnpk_MVZw;->INSTANCE:Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$t_g1wNcy28QqudA-vbrnpk_MVZw;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 490
    iget-boolean v2, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v2, :cond_2

    .line 491
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualSideMenuStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v2

    goto :goto_2

    .line 493
    :cond_2
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetSideMenuFileOnError(Landroid/content/Context;)V

    .line 494
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualSideMenuFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v2

    .line 495
    :goto_2
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 496
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 497
    new-instance v3, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$AcjXmBY6xR1I_0nyvrBvwB21g2k;

    invoke-direct {v3, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$AcjXmBY6xR1I_0nyvrBvwB21g2k;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    sget-object v4, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$DF7EMHdlH-a_A_AMs0bwxRmMUow;->INSTANCE:Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$DF7EMHdlH-a_A_AMs0bwxRmMUow;

    invoke-virtual {v2, v3, v4}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 506
    iget-boolean v3, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v3, :cond_3

    .line 507
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getBlackListStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v3

    goto :goto_3

    .line 509
    :cond_3
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleBlackListFileOnError(Landroid/content/Context;)V

    .line 510
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getBlackListFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v3

    .line 511
    :goto_3
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v3

    .line 512
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v3

    .line 513
    new-instance v4, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$dZsrMBiVqiYDbH_b_rkL58LTUPI;

    invoke-direct {v4, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$dZsrMBiVqiYDbH_b_rkL58LTUPI;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    sget-object v5, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$-MnBCOdrS9_xPHWmvB2s-JWivcM;->INSTANCE:Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$-MnBCOdrS9_xPHWmvB2s-JWivcM;

    invoke-virtual {v3, v4, v5}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v3

    .line 522
    iget-boolean v4, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v4, :cond_4

    .line 523
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMultiActionsStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    goto :goto_4

    .line 525
    :cond_4
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleMultiActionsFileOnError(Landroid/content/Context;)V

    .line 526
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMultiActionsFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 527
    :goto_4
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 528
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 529
    new-instance v4, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$HcBkiA8_I6RBcaKbgKOKl7TrPgA;

    invoke-direct {v4, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$HcBkiA8_I6RBcaKbgKOKl7TrPgA;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    sget-object v5, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$bGgZ2YFN5jzETtx1Wxn9fps5niM;->INSTANCE:Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$bGgZ2YFN5jzETtx1Wxn9fps5niM;

    invoke-virtual {p1, v4, v5}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 537
    iget-object v4, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const/4 v5, 0x5

    new-array v5, v5, [Lio/reactivex/disposables/Disposable;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object p1, v5, v0

    invoke-virtual {v4, v5}, Lio/reactivex/disposables/CompositeDisposable;->addAll([Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final getFirstFromStorage$lambda-31(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 467
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMutualStaticData(Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;)V

    .line 468
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    :cond_0
    return-void
.end method

.method private static final getFirstFromStorage$lambda-32(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static final getFirstFromStorage$lambda-33(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 483
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setTextDictionary(Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;)V

    .line 484
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    :cond_0
    return-void
.end method

.method private static final getFirstFromStorage$lambda-34(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static final getFirstFromStorage$lambda-35(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 499
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMSideMenuData(Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;)V

    .line 500
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    :cond_0
    return-void
.end method

.method private static final getFirstFromStorage$lambda-36(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static final getFirstFromStorage$lambda-37(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/BlackListPhones;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 515
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMBlackListPhones(Lcom/poalim/bl/model/staticdata/android/BlackListPhones;)V

    .line 516
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    :cond_0
    return-void
.end method

.method private static final getFirstFromStorage$lambda-38(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static final getFirstFromStorage$lambda-39(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 531
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMMultiActionData(Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;)V

    .line 532
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    :cond_0
    return-void
.end method

.method private static final getFirstFromStorage$lambda-40(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private final getGeneralFAQStorage(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/FaqItem;",
            ">;"
        }
    .end annotation

    .line 412
    const-class v0, Lcom/poalim/bl/model/FaqItem;

    iget-boolean v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, p2, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/FaqItem;

    :goto_0
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "{\n                Single.just(mStaticHelper?.loadFileFromAssets(context, fName, FaqItem::class.java))\n            }"

    .line 412
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1, p2, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/FaqItem;

    :goto_1
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "{\n                Single.just(mStaticHelper?.loadFileFromLocalStorage(context, fName, FaqItem::class.java))\n            }"

    .line 414
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method public static synthetic getGeneralFaqByFileName$default(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 275
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getGeneralFaqByFileName(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final getGeneralFaqByFileName$lambda-21(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/FaqItem;)V
    .locals 1

    const-string v0, "$fName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p4}, Lcom/poalim/bl/model/FaqItem;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-boolean v0, p4, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_8

    .line 285
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "withdrawal_money.json"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 293
    :cond_1
    invoke-interface {p1, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    const-string p2, "scan_checks.json"

    .line 285
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    .line 296
    :cond_3
    invoke-interface {p1, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    const-string p2, "pre_login_contact_us.json"

    .line 285
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    goto :goto_0

    .line 287
    :cond_5
    invoke-interface {p1, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_3
    const-string p2, "terminalcash.json"

    .line 285
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    if-nez p1, :cond_7

    goto :goto_0

    .line 290
    :cond_7
    invoke-interface {p1, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 300
    :cond_8
    invoke-direct {p2, p3, p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleFaqFileOnError(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f38d439 -> :sswitch_3
        -0x9247059 -> :sswitch_2
        0x6130c5c9 -> :sswitch_1
        0x67b0c320 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final getGeneralFaqByFileName$lambda-22(Ljava/lang/String;Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "$fName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_0

    const-string p4, ""

    :cond_0
    invoke-static {p0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct {p1, p2, p0, p3}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleFaqFileOnError(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

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
            "Lcom/poalim/bl/model/FaqItem;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0, p2}, Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;->getRemoteGeneralFaqFilesData(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 350
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$p6rPmLNeUiGysRNy9EvJ53MPpTk;

    invoke-direct {v1, p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$p6rPmLNeUiGysRNy9EvJ53MPpTk;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "mStaticLoaderImpl.getRemoteGeneralFaqFilesData(fName)\n                    .map {\n                        mStaticHelper?.saveFileToLocalStorage(context, fName, it)\n                        it.isSuccess = true\n                        Log.e(fName, it.toString())\n\n                        return@map it\n                    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getGeneralFaqFilesFromServer$lambda-27(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/String;Lcom/poalim/bl/model/FaqItem;)Lcom/poalim/bl/model/FaqItem;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$fName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->saveFileToLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    .line 352
    iput-boolean p0, p3, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    .line 353
    invoke-virtual {p3}, Lcom/poalim/bl/model/FaqItem;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3
.end method

.method private final getMultiActionsFromServer(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;",
            ">;"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;->getMultiActions()Lio/reactivex/Single;

    move-result-object v0

    .line 341
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$zsHVlsbApudlu-v9gPClwXrD8Pw;

    invoke-direct {v1, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$zsHVlsbApudlu-v9gPClwXrD8Pw;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getMultiActions()\n                    .map {\n                        mStaticHelper?.saveFileToLocalStorage(context, STATIC_MULTI_ACTIONS, it)\n                        it.isSuccess = true\n                        Log.e(STATIC_MULTI_ACTIONS, it.toString())\n                        return@map it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getMultiActionsFromServer$lambda-26(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;)Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    const-string v0, "multi_actions.json"

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->saveFileToLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    .line 343
    iput-boolean p0, p2, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    .line 344
    invoke-virtual {p2}, Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private final getMultiActionsStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;",
            ">;"
        }
    .end annotation

    .line 440
    const-class v0, Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;

    iget-boolean v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v2, 0x0

    const-string v3, "multi_actions.json"

    if-eqz v1, :cond_1

    .line 441
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;

    :goto_0
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromAssets(context, STATIC_MULTI_ACTIONS, MultiActionData::class.java))\n            }"

    .line 440
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;

    :goto_1
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromLocalStorage(context, STATIC_MULTI_ACTIONS, MultiActionData::class.java))\n            }"

    .line 442
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
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
            "Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;",
            ">;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;->getRemoteMutualDictData()Lio/reactivex/Single;

    move-result-object v0

    .line 321
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$a86iSYBku0axNaAJ0GxwJ9FnAWk;

    invoke-direct {v1, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$a86iSYBku0axNaAJ0GxwJ9FnAWk;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRemoteMutualDictData()\n                    .map {\n                        mStaticHelper?.saveFileToLocalStorage(context, STATIC_MUTUAL_DICTIONARY, it)\n                        it.isSuccess = true\n                        Log.e(\"mutual_dictionary\", it.toString())\n                        return@map it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getMutualDictFromServer$lambda-24(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;)Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "mutual_dictionary_new.json"

    invoke-virtual {p0, p1, v0, p2}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->saveFileToLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    .line 323
    iput-boolean p0, p2, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    .line 324
    invoke-virtual {p2}, Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mutual_dictionary"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private final getMutualDictionaryStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;",
            ">;"
        }
    .end annotation

    .line 405
    const-class v0, Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;

    iget-boolean v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v2, 0x0

    const-string v3, "mutual_dictionary_new.json"

    if-eqz v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;

    :goto_0
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromAssets(context, STATIC_MUTUAL_DICTIONARY, GenderMutualError::class.java))\n            }"

    .line 405
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 408
    :cond_1
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;

    :goto_1
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromLocalStorage(context, STATIC_MUTUAL_DICTIONARY, GenderMutualError::class.java))\n            }"

    .line 407
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
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
            "Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;->getRemoteMutualStaticData()Lio/reactivex/Single;

    move-result-object v0

    .line 312
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$6fGt8nbm2yuxT8y_gqPUkyCQl4o;

    invoke-direct {v1, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$6fGt8nbm2yuxT8y_gqPUkyCQl4o;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRemoteMutualStaticData()\n                    .map {\n                        mStaticHelper?.saveFileToLocalStorage(context, STATIC_MUTUAL_FILE_PREFIX, it)\n                        it.isSuccess = true\n                        Log.e(STATIC_MUTUAL_FILE_PREFIX, it.toString())\n                        return@map it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getMutualFilesFromServer$lambda-23(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;)Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    const-string v0, "mutual.json"

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->saveFileToLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    .line 314
    iput-boolean p0, p2, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    .line 315
    invoke-virtual {p2}, Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private final getMutualSideMenuFromServer(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;->getRemoteMutualSideMenuData()Lio/reactivex/Single;

    move-result-object v0

    .line 361
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$duaHZeJAwUM4g1-Z68czh7JX6RM;

    invoke-direct {v1, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$duaHZeJAwUM4g1-Z68czh7JX6RM;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRemoteMutualSideMenuData()\n                    .map {\n                        mStaticHelper?.saveFileToLocalStorage(context, STATIC_MUTUAL_SIDE_MENU, it)\n                        it.isSuccess = true\n                        Log.e(\"MUTUAL_SIDE_MENU\", it.toString())\n                        return@map it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getMutualSideMenuFromServer$lambda-28(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;)Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "mutual_menu_actions.json"

    invoke-virtual {p0, p1, v0, p2}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->saveFileToLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    .line 363
    iput-boolean p0, p2, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    .line 364
    invoke-virtual {p2}, Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MUTUAL_SIDE_MENU"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private final getMutualSideMenuStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;",
            ">;"
        }
    .end annotation

    .line 419
    const-class v0, Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;

    iget-boolean v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v2, 0x0

    const-string v3, "mutual_menu_actions.json"

    if-eqz v1, :cond_1

    .line 420
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;

    :goto_0
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromAssets(context, STATIC_MUTUAL_SIDE_MENU, SideMenuData::class.java))\n            }"

    .line 419
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 422
    :cond_1
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;

    :goto_1
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromLocalStorage(context, STATIC_MUTUAL_SIDE_MENU, SideMenuData::class.java))\n            }"

    .line 421
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method private final getMutualStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;",
            ">;"
        }
    .end annotation

    .line 390
    const-class v0, Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;

    iget-boolean v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v2, 0x0

    const-string v3, "mutual.json"

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;

    :goto_0
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromAssets(context, STATIC_MUTUAL_FILE_PREFIX, MutualStaticData::class.java))\n            }"

    .line 390
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;

    :goto_1
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromLocalStorage(context, STATIC_MUTUAL_FILE_PREFIX, MutualStaticData::class.java))\n            }"

    .line 392
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method private final handleAndroidVersionFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getAndroidVersionStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 184
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 185
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 186
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$cfxDSdMCNVlSfH1gJix1vnclc6g;

    invoke-direct {v1, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$cfxDSdMCNVlSfH1gJix1vnclc6g;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 193
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$Mn2aP6xSSDcE8g7Fe1xc56eGuBE;

    invoke-direct {v2, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$Mn2aP6xSSDcE8g7Fe1xc56eGuBE;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 186
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 183
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final handleAndroidVersionFileOnError$lambda-13(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/AndroidVersion;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMAndroidVersion(Lcom/poalim/bl/model/staticdata/android/AndroidVersion;)V

    .line 189
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    goto :goto_0

    .line 191
    :cond_0
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final handleAndroidVersionFileOnError$lambda-14(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "unknown error "

    :cond_0
    const-string v0, "android_version.json"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final handleBlackListFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getBlackListStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 243
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 244
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 245
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$qdTWxg3fH-gbRtx8XkBn1a75k9A;

    invoke-direct {v1, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$qdTWxg3fH-gbRtx8XkBn1a75k9A;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 252
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$wodP34-noepmlqC1wE75_OJPQMQ;

    invoke-direct {v2, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$wodP34-noepmlqC1wE75_OJPQMQ;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 245
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 242
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final handleBlackListFileOnError$lambda-17(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/BlackListPhones;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMBlackListPhones(Lcom/poalim/bl/model/staticdata/android/BlackListPhones;)V

    .line 248
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    goto :goto_0

    .line 250
    :cond_0
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final handleBlackListFileOnError$lambda-18(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "unknown error "

    :cond_0
    const-string v0, "black_list_phones.json"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
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
            "Lcom/poalim/bl/model/FaqItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getGeneralFAQStorage(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 201
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 202
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 203
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$NanhaNIa5LDS1RhGWhsvgjAG8TE;

    invoke-direct {v1, p2, p3}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$NanhaNIa5LDS1RhGWhsvgjAG8TE;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 222
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$YQLOpBCu4xfVOl3754W4GsJRSug;

    invoke-direct {v2, p2, p3}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$YQLOpBCu4xfVOl3754W4GsJRSug;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 203
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 200
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final handleFaqFileOnError$lambda-15(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/poalim/bl/model/FaqItem;)V
    .locals 1

    const-string v0, "$fName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-boolean v0, p2, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_8

    .line 205
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "withdrawal_money.json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 213
    :cond_1
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    const-string v0, "scan_checks.json"

    .line 205
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    .line 216
    :cond_3
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    const-string v0, "pre_login_contact_us.json"

    .line 205
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    goto :goto_0

    .line 207
    :cond_5
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_3
    const-string v0, "terminalcash.json"

    .line 205
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    if-nez p1, :cond_7

    goto :goto_0

    .line 210
    :cond_7
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_8
    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 p0, 0x0

    .line 220
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f38d439 -> :sswitch_3
        -0x9247059 -> :sswitch_2
        0x6130c5c9 -> :sswitch_1
        0x67b0c320 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final handleFaqFileOnError$lambda-16(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "$fName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "unknown error "

    sparse-switch v0, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v0, "withdrawal_money.json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_4

    .line 231
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :sswitch_1
    const-string v0, "scan_checks.json"

    .line 223
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_4

    .line 234
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, p0

    :goto_1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :sswitch_2
    const-string v0, "pre_login_contact_us.json"

    .line 223
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_4

    .line 225
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, p0

    :goto_2
    const-string p0, "pre_login_contact_us"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :sswitch_3
    const-string v0, "terminalcash.json"

    .line 223
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_4

    .line 228
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    move-object v1, p0

    :goto_3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    const/4 p0, 0x0

    .line 237
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f38d439 -> :sswitch_3
        -0x9247059 -> :sswitch_2
        0x6130c5c9 -> :sswitch_1
        0x67b0c320 -> :sswitch_0
    .end sparse-switch
.end method

.method private final handleGetAndroidFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getAndroidStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 109
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 110
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 111
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$evSCl4058ZMaijaWrQDizyV03KY;

    invoke-direct {v1, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$evSCl4058ZMaijaWrQDizyV03KY;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 118
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$cJiVOsvp3_Ox1tq8fJ7_-OXX_Fs;

    invoke-direct {v2, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$cJiVOsvp3_Ox1tq8fJ7_-OXX_Fs;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 111
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 108
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final handleGetAndroidFileOnError$lambda-5(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMAndroidKeys(Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;)V

    .line 114
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final handleGetAndroidFileOnError$lambda-6(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "unknown error "

    :cond_0
    const-string v0, "android.json"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final handleGetMutualDictionaryFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualDictionaryStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 145
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 146
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 147
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$GrfUCPfjDJoWmARauMMBvjiqA_E;

    invoke-direct {v1, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$GrfUCPfjDJoWmARauMMBvjiqA_E;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 155
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$cZfWslnpWYFMPW2MSUPM_vU-Npw;

    invoke-direct {v2, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$cZfWslnpWYFMPW2MSUPM_vU-Npw;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 147
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 144
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final handleGetMutualDictionaryFileOnError$lambda-10(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "unknown error "

    :cond_0
    const-string v0, "mutual_dictionary"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final handleGetMutualDictionaryFileOnError$lambda-9(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setTextDictionary(Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;)V

    .line 150
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    goto :goto_0

    .line 152
    :cond_0
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final handleGetMutualFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 126
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 127
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 128
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$XCNOPhjEuVLTAnu84OukyajtTdc;

    invoke-direct {v1, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$XCNOPhjEuVLTAnu84OukyajtTdc;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 136
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$7SYa79sKXN3KwoSbWvnyCyNqOak;

    invoke-direct {v2, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$7SYa79sKXN3KwoSbWvnyCyNqOak;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 128
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 125
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final handleGetMutualFileOnError$lambda-7(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMutualStaticData(Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;)V

    .line 131
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    goto :goto_0

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final handleGetMutualFileOnError$lambda-8(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "unknown error "

    :cond_0
    const-string v0, "mutual.json"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final handleGetSideMenuFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualSideMenuStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 166
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 167
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 168
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$y5MZ5ZfWE_6OTf_ykbIF4fArxHA;

    invoke-direct {v1, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$y5MZ5ZfWE_6OTf_ykbIF4fArxHA;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 175
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$ZEuNa1NbnZButgpodHcFBLa3Soo;

    invoke-direct {v2, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$ZEuNa1NbnZButgpodHcFBLa3Soo;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 168
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 165
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final handleGetSideMenuFileOnError$lambda-11(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMSideMenuData(Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;)V

    .line 171
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    goto :goto_0

    .line 173
    :cond_0
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final handleGetSideMenuFileOnError$lambda-12(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "unknown error "

    :cond_0
    const-string v0, "STATIC_MUTUAL_SIDE_MENU"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final handleMultiActionsFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMultiActionsStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 260
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 261
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 262
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$lE_olXh3uHPt5xop1iumIUgCIh8;

    invoke-direct {v1, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$lE_olXh3uHPt5xop1iumIUgCIh8;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 269
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$enq9g8F-kLQTZ8Nmvt3BQny8wO8;

    invoke-direct {v2, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$enq9g8F-kLQTZ8Nmvt3BQny8wO8;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 262
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 259
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final handleMultiActionsFileOnError$lambda-19(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMMultiActionData(Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;)V

    .line 265
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    goto :goto_0

    .line 267
    :cond_0
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final handleMultiActionsFileOnError$lambda-20(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "unknown error "

    :cond_0
    const-string v0, "multi_actions.json"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static synthetic lambda$-MnBCOdrS9_xPHWmvB2s-JWivcM(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-38(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$27shAoK3U2Bj7S9Ou4uaJqAuzFo(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->sourceManager$lambda-1(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;)V

    return-void
.end method

.method public static synthetic lambda$40zsS9W0-6UbSW3lu4UEvVpHBIw(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-32(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$6fGt8nbm2yuxT8y_gqPUkyCQl4o(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;)Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualFilesFromServer$lambda-23(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;)Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$7SYa79sKXN3KwoSbWvnyCyNqOak(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetMutualFileOnError$lambda-8(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$8Fh4AjSpms_MoPrto1picMcbf7E(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-31(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;)V

    return-void
.end method

.method public static synthetic lambda$AcjXmBY6xR1I_0nyvrBvwB21g2k(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-35(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;)V

    return-void
.end method

.method public static synthetic lambda$DF7EMHdlH-a_A_AMs0bwxRmMUow(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-36(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$DzsnYBFIRm1-HhXollg8SJJMF50(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/FaqItem;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getGeneralFaqByFileName$lambda-21(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/FaqItem;)V

    return-void
.end method

.method public static synthetic lambda$GrfUCPfjDJoWmARauMMBvjiqA_E(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetMutualDictionaryFileOnError$lambda-9(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;)V

    return-void
.end method

.method public static synthetic lambda$HcBkiA8_I6RBcaKbgKOKl7TrPgA(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-39(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;)V

    return-void
.end method

.method public static synthetic lambda$Mn2aP6xSSDcE8g7Fe1xc56eGuBE(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleAndroidVersionFileOnError$lambda-14(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$NT9lLVZlTaO8XSGU-U5zAxaew1M(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidVersion;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->sourceManager$lambda-3(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidVersion;)V

    return-void
.end method

.method public static synthetic lambda$NanhaNIa5LDS1RhGWhsvgjAG8TE(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/poalim/bl/model/FaqItem;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleFaqFileOnError$lambda-15(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/poalim/bl/model/FaqItem;)V

    return-void
.end method

.method public static synthetic lambda$QJtOxZh8-tC5-CwN8svtwRa_nTQ(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-33(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;)V

    return-void
.end method

.method public static synthetic lambda$RFvtTgppfm3IOKgCm0rL--l-ahM(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidVersion;)Lcom/poalim/bl/model/staticdata/android/AndroidVersion;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getAndroidVersionFromServer$lambda-29(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidVersion;)Lcom/poalim/bl/model/staticdata/android/AndroidVersion;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$XCNOPhjEuVLTAnu84OukyajtTdc(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetMutualFileOnError$lambda-7(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;)V

    return-void
.end method

.method public static synthetic lambda$YQLOpBCu4xfVOl3754W4GsJRSug(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleFaqFileOnError$lambda-16(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$ZEuNa1NbnZButgpodHcFBLa3Soo(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetSideMenuFileOnError$lambda-12(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$a86iSYBku0axNaAJ0GxwJ9FnAWk(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;)Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualDictFromServer$lambda-24(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;)Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$bGgZ2YFN5jzETtx1Wxn9fps5niM(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-40(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$cJiVOsvp3_Ox1tq8fJ7_-OXX_Fs(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetAndroidFileOnError$lambda-6(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$cZfWslnpWYFMPW2MSUPM_vU-Npw(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetMutualDictionaryFileOnError$lambda-10(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$cfxDSdMCNVlSfH1gJix1vnclc6g(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/AndroidVersion;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleAndroidVersionFileOnError$lambda-13(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/AndroidVersion;)V

    return-void
.end method

.method public static synthetic lambda$dZsrMBiVqiYDbH_b_rkL58LTUPI(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/BlackListPhones;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-37(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/BlackListPhones;)V

    return-void
.end method

.method public static synthetic lambda$duaHZeJAwUM4g1-Z68czh7JX6RM(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;)Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualSideMenuFromServer$lambda-28(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;)Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$enq9g8F-kLQTZ8Nmvt3BQny8wO8(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleMultiActionsFileOnError$lambda-20(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$evSCl4058ZMaijaWrQDizyV03KY(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetAndroidFileOnError$lambda-5(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;)V

    return-void
.end method

.method public static synthetic lambda$frvny7kGVIxV2HlhDzudmmwzTdU(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/BlackListPhones;)Lcom/poalim/bl/model/staticdata/android/BlackListPhones;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getBlackListFromServer$lambda-30(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/BlackListPhones;)Lcom/poalim/bl/model/staticdata/android/BlackListPhones;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$lE_olXh3uHPt5xop1iumIUgCIh8(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleMultiActionsFileOnError$lambda-19(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;)V

    return-void
.end method

.method public static synthetic lambda$nE9ryTMxfUb3_r770JBpr6tiuXg(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->sourceManager$lambda-2(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$p6rPmLNeUiGysRNy9EvJ53MPpTk(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/String;Lcom/poalim/bl/model/FaqItem;)Lcom/poalim/bl/model/FaqItem;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getGeneralFaqFilesFromServer$lambda-27(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/String;Lcom/poalim/bl/model/FaqItem;)Lcom/poalim/bl/model/FaqItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$qQaoRdjc8W54Ox-da_zk3MqDc2k(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->sourceManager$lambda-4(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$qdTWxg3fH-gbRtx8XkBn1a75k9A(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/BlackListPhones;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleBlackListFileOnError$lambda-17(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/BlackListPhones;)V

    return-void
.end method

.method public static synthetic lambda$t_g1wNcy28QqudA-vbrnpk_MVZw(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-34(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$u0SVPs0icYJc09IX2t_zfkoAdC4(Ljava/lang/String;Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getGeneralFaqByFileName$lambda-22(Ljava/lang/String;Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$wodP34-noepmlqC1wE75_OJPQMQ(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleBlackListFileOnError$lambda-18(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$y5MZ5ZfWE_6OTf_ykbIF4fArxHA(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetSideMenuFileOnError$lambda-11(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;)V

    return-void
.end method

.method public static synthetic lambda$zE84yHVmkWH8mypq0x5P8In5Kmw(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;)Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getAndroidFilesFromServer$lambda-25(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;)Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$zsHVlsbApudlu-v9gPClwXrD8Pw(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;)Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMultiActionsFromServer$lambda-26(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;)Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;

    move-result-object p0

    return-object p0
.end method

.method private final sourceManager(Landroid/content/Context;)V
    .locals 4

    .line 62
    sget-object v0, Lcom/poalim/bl/extensions/DelegatePrefs;->INSTANCE:Lcom/poalim/bl/extensions/DelegatePrefs;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "static_offline"

    invoke-virtual {v0, p1, v2, v1}, Lcom/poalim/bl/extensions/DelegatePrefs;->preference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lcom/poalim/bl/extensions/PreferencesExtension;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->sourceManager$lambda-0(Lcom/poalim/bl/extensions/PreferencesExtension;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getAndroidStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_0
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getAndroidFilesFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v0

    .line 69
    :goto_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 70
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$27shAoK3U2Bj7S9Ou4uaJqAuzFo;

    invoke-direct {v1, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$27shAoK3U2Bj7S9Ou4uaJqAuzFo;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    .line 78
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$nE9ryTMxfUb3_r770JBpr6tiuXg;

    invoke-direct {v2, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$nE9ryTMxfUb3_r770JBpr6tiuXg;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    .line 71
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 83
    iget-boolean v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v1, :cond_1

    .line 84
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getAndroidVersionStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v1

    goto :goto_1

    .line 86
    :cond_1
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getAndroidVersionFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v1

    .line 87
    :goto_1
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 88
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 89
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$NT9lLVZlTaO8XSGU-U5zAxaew1M;

    invoke-direct {v2, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$NT9lLVZlTaO8XSGU-U5zAxaew1M;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    .line 96
    new-instance v3, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$qQaoRdjc8W54Ox-da_zk3MqDc2k;

    invoke-direct {v3, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$qQaoRdjc8W54Ox-da_zk3MqDc2k;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    .line 89
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 101
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage(Landroid/content/Context;)V

    .line 103
    iget-object p1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const/4 v2, 0x2

    new-array v2, v2, [Lio/reactivex/disposables/Disposable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p1, v2}, Lio/reactivex/disposables/CompositeDisposable;->addAll([Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final sourceManager$lambda-0(Lcom/poalim/bl/extensions/PreferencesExtension;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/poalim/bl/extensions/PreferencesExtension<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 62
    sget-object v0, Lcom/poalim/bl/managers/staticloader/StaticManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/poalim/bl/extensions/PreferencesExtension;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final sourceManager$lambda-1(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-boolean v0, p2, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 73
    sget-object p1, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {p1, p2}, Lcom/poalim/bl/data/StaticDataManager;->setMAndroidKeys(Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;)V

    .line 74
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    goto :goto_0

    .line 76
    :cond_0
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetAndroidFileOnError(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private static final sourceManager$lambda-2(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "unknown error "

    :cond_0
    const-string v0, "android.json"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetAndroidFileOnError(Landroid/content/Context;)V

    return-void
.end method

.method private static final sourceManager$lambda-3(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidVersion;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-boolean v0, p2, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 91
    sget-object p1, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {p1, p2}, Lcom/poalim/bl/data/StaticDataManager;->setMAndroidVersion(Lcom/poalim/bl/model/staticdata/android/AndroidVersion;)V

    .line 92
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    goto :goto_0

    .line 94
    :cond_0
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleAndroidVersionFileOnError(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private static final sourceManager$lambda-4(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "unknown error "

    :cond_0
    const-string v0, "android_version.json"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleAndroidVersionFileOnError(Landroid/content/Context;)V

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

    .line 449
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    const/4 v0, 0x0

    .line 451
    iput-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    .line 452
    iput-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

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
            "Lcom/poalim/bl/model/FaqItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iget-boolean v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 277
    invoke-direct {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getGeneralFAQStorage(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    goto :goto_0

    .line 279
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getGeneralFaqFilesFromServer(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 280
    :goto_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 281
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 282
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$DzsnYBFIRm1-HhXollg8SJJMF50;

    invoke-direct {v1, p2, p3, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$DzsnYBFIRm1-HhXollg8SJJMF50;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    .line 302
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$u0SVPs0icYJc09IX2t_zfkoAdC4;

    invoke-direct {v2, p2, p0, p1, p3}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$u0SVPs0icYJc09IX2t_zfkoAdC4;-><init>(Ljava/lang/String;Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 282
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 306
    iget-object p2, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->sourceManager(Landroid/content/Context;)V

    return-void
.end method
