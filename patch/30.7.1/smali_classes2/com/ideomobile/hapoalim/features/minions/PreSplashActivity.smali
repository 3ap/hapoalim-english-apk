.class public final Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PreSplashActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreSplashActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreSplashActivity.kt\ncom/ideomobile/hapoalim/features/minions/PreSplashActivity\n*L\n1#1,415:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final creditWorld$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

.field private final loanWorld$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

.field private final mBabooshkaChannel$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

.field private mBabooshkaET:Landroidx/appcompat/widget/AppCompatEditText;

.field private mBabooshkaLayout:Landroid/widget/LinearLayout;

.field private mCreditWorldSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

.field private mDateAppRating:Landroidx/appcompat/widget/AppCompatEditText;

.field private mDateAppRatingContainer:Landroid/widget/LinearLayout;

.field private mISWmRecordSelected:Z

.field private mIndexVideo:I

.field private mIsBabooshkaSelected:Z

.field private mIsPreProdSelected:Z

.field private mIsProdBetaSelected:Z

.field private mIsProdSelected:Z

.field private mIsStubsLandingSelected:Z

.field private mIsStubsRegularSelected:Z

.field private mIsWmCISelected:Z

.field private final mLastTimeShowAppRating$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

.field private mLoanWorldSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

.field private mMinionsKeyDialog:Lcom/ideomobile/hapoalim/features/minions/MinionsKeyDialog;

.field private mOtpSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

.field private mServerNumberLayout:Landroid/widget/LinearLayout;

.field private mStaticSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

.field private mVideoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final magicOtp$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

.field private final staticOffLine$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "magicOtp"

    const-string v4, "getMagicOtp()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "staticOffLine"

    const-string v4, "getStaticOffLine()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "creditWorld"

    const-string v4, "getCreditWorld()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "loanWorld"

    const-string v4, "getLoanWorld()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mBabooshkaChannel"

    const-string v4, "getMBabooshkaChannel()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mLastTimeShowAppRating"

    const-string v4, "getMLastTimeShowAppRating()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    const-class v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "isRegisteredQuickGlance"

    const-string v4, "<v#0>"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    const-class v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "channel"

    const-string v4, "<v#1>"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 83
    sget-object v0, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->INSTANCE:Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "magic_otp"

    invoke-virtual {v0, p0, v2, v1}, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->preference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->magicOtp$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    .line 84
    sget-object v0, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->INSTANCE:Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;

    const-string v2, "static_offline"

    invoke-virtual {v0, p0, v2, v1}, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->preference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->staticOffLine$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    .line 85
    sget-object v0, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->INSTANCE:Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;

    const-string v2, "ccw"

    invoke-virtual {v0, p0, v2, v1}, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->preference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->creditWorld$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    .line 86
    sget-object v0, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->INSTANCE:Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;

    const-string v2, "lwk"

    invoke-virtual {v0, p0, v2, v1}, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->preference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->loanWorld$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    .line 87
    sget-object v0, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->INSTANCE:Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;

    const-string v1, ""

    const-string v2, "babooshka_channel"

    invoke-virtual {v0, p0, v2, v1}, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->preference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mBabooshkaChannel$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    .line 89
    sget-object v0, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->INSTANCE:Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;

    const-string v2, "last_date_application_rating"

    invoke-virtual {v0, p0, v2, v1}, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->preference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mLastTimeShowAppRating$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    return-void
.end method

.method public static final synthetic access$getMBabooshkaET$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Landroidx/appcompat/widget/AppCompatEditText;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mBabooshkaET:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mBabooshkaET"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getMBabooshkaLayout$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mBabooshkaLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mBabooshkaLayout"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getMDateAppRating$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Landroidx/appcompat/widget/AppCompatEditText;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mDateAppRating:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mDateAppRating"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getMISWmRecordSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mISWmRecordSelected:Z

    return p0
.end method

.method public static final synthetic access$getMIsBabooshkaSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsBabooshkaSelected:Z

    return p0
.end method

.method public static final synthetic access$getMIsPreProdSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsPreProdSelected:Z

    return p0
.end method

.method public static final synthetic access$getMIsProdBetaSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsProdBetaSelected:Z

    return p0
.end method

.method public static final synthetic access$getMIsProdSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsProdSelected:Z

    return p0
.end method

.method public static final synthetic access$getMIsStubsLandingSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsStubsLandingSelected:Z

    return p0
.end method

.method public static final synthetic access$getMIsWmCISelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsWmCISelected:Z

    return p0
.end method

.method public static final synthetic access$getMMinionsKeyDialog$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Lcom/ideomobile/hapoalim/features/minions/MinionsKeyDialog;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mMinionsKeyDialog:Lcom/ideomobile/hapoalim/features/minions/MinionsKeyDialog;

    return-object p0
.end method

.method public static final synthetic access$getMServerNumberLayout$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mServerNumberLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mServerNumberLayout"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getMStaticSwitch$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mStaticSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mStaticSwitch"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$playVideo(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->playVideo()V

    return-void
.end method

.method public static final synthetic access$setCreditWorld$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setCreditWorld(Z)V

    return-void
.end method

.method public static final synthetic access$setLoanWorld$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setLoanWorld(Z)V

    return-void
.end method

.method public static final synthetic access$setMISWmRecordSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mISWmRecordSelected:Z

    return-void
.end method

.method public static final synthetic access$setMIsBabooshkaSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsBabooshkaSelected:Z

    return-void
.end method

.method public static final synthetic access$setMIsPreProdSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsPreProdSelected:Z

    return-void
.end method

.method public static final synthetic access$setMIsProdBetaSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsProdBetaSelected:Z

    return-void
.end method

.method public static final synthetic access$setMIsProdSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsProdSelected:Z

    return-void
.end method

.method public static final synthetic access$setMIsStubsLandingSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsStubsLandingSelected:Z

    return-void
.end method

.method public static final synthetic access$setMIsStubsRegularSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsStubsRegularSelected:Z

    return-void
.end method

.method public static final synthetic access$setMIsWmCISelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsWmCISelected:Z

    return-void
.end method

.method public static final synthetic access$setMLastTimeShowAppRating$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setMLastTimeShowAppRating(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setMMinionsKeyDialog$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Lcom/ideomobile/hapoalim/features/minions/MinionsKeyDialog;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mMinionsKeyDialog:Lcom/ideomobile/hapoalim/features/minions/MinionsKeyDialog;

    return-void
.end method

.method public static final synthetic access$setMagicOtp$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setMagicOtp(Z)V

    return-void
.end method

.method public static final synthetic access$setStaticOffLine$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setStaticOffLine(Z)V

    return-void
.end method

.method private final getMBabooshkaChannel()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mBabooshkaChannel$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    sget-object v1, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final initServerList(Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "prod"

    const-string v2, "wiremock"

    .line 388
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 389
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const v5, 0x7f08034c

    const-string v3, "1"

    const-string v4, "Prod"

    const-string v6, "https://iphone.bankhapoalim.co.il/"

    const-string v7, "https://static.bankhapoalim.co.il/"

    const-string v8, "prod"

    const-string v9, "https://gphone.bankhapoalim.co.il/"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const v13, 0x7f080346

    const-string v11, "2"

    const-string v12, "Prod Beta"

    const-string v14, "https://iphone.bankhapoalim.co.il/"

    const-string v15, "https://static.bankhapoalim.co.il/"

    const-string v16, "prod beta"

    const-string v17, "https://gphone.bankhapoalim.co.il/"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const v5, 0x7f080347

    const-string v3, "3"

    const-string v4, "Pre Prod"

    const-string v6, "https://iphonepre.bankhapoalim.co.il/"

    const-string v7, "https://staticpre.bankhapoalim.co.il/"

    const-string v8, "pre prod"

    const-string v9, "https://gphonepre.bankhapoalim.co.il/"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const v13, 0x7f08034b

    const-string v11, "4"

    const-string v12, "Mob1"

    const-string v14, "https://mob1.bankhapoalim.co.il/"

    const-string v15, "https://static.bankhapoalim.co.il/"

    const-string v16, "mob1"

    const-string v17, "https://gphone1.bankhapoalim.co.il/"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const v5, 0x7f080349

    const-string v3, "5"

    const-string v4, "Mob2"

    const-string v6, "https://mob2.bankhapoalim.co.il/"

    const-string v7, "https://static.bankhapoalim.co.il/"

    const-string v8, "mob2"

    const-string v9, "https://gphone2.bankhapoalim.co.il/"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const v13, 0x7f08034a

    const-string v11, "6"

    const-string v12, "Mob3"

    const-string v14, "https://mob3.bankhapoalim.co.il/"

    const-string v15, "https://static.bankhapoalim.co.il/"

    const-string v16, "mob3"

    const-string v17, "https://gphone3.bankhapoalim.co.il/"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const v5, 0x7f080083

    const-string v3, "7"

    const-string v4, "BABOOSHKA"

    const-string v6, "http://babooshka/account3/baboocha-"

    const-string v7, "https://static.bankhapoalim.co.il/"

    const-string v8, "babooshka"

    const-string v9, "https://gphone3.bankhapoalim.co.il/"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const v13, 0x7f08034b

    const-string v11, "10"

    const-string v12, "STUBS_REGULAR"

    const-string v14, "https://10.0.2.2:8888/"

    const-string v15, "https://10.0.2.2:9999/"

    const-string v16, "mob1"

    const-string v17, "https://gphone1.bankhapoalim.co.il/"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const v5, 0x7f08034b

    const-string v3, "11"

    const-string v4, "STUBS_LANDING"

    const-string v6, "https://10.0.2.2:8888/"

    const-string v7, "https://10.0.2.2:9999/"

    const-string v8, "mob1"

    const-string v9, "https://gphone1.bankhapoalim.co.il/"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 399
    :cond_0
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const v13, 0x7f08034b

    const-string v11, "8"

    const-string v12, "WM_CI"

    const-string v14, "https://10.0.2.2:port/"

    const-string v15, "https://10.0.2.2:port/"

    const-string v16, "wiremock"

    const-string v17, "https://gphone1.bankhapoalim.co.il/"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const v5, 0x7f080349

    const-string v3, "9"

    const-string v4, "WM_RECORD"

    const-string v6, "https://10.0.2.2:1111/"

    const-string v7, "https://10.0.2.2:2222/"

    const-string v8, "wiremock"

    const-string v9, "https://gphone2.bankhapoalim.co.il/"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private final playVideo()V
    .locals 5

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/raw/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mVideoList:Ljava/util/ArrayList;

    const-string v2, "mVideoList"

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget v4, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIndexVideo:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.parse(videoPath)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->uri:Landroid/net/Uri;

    .line 407
    sget v0, Lcom/ideomobile/hapoalim/R$id;->video_path:I

    invoke-virtual {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 408
    sget v0, Lcom/ideomobile/hapoalim/R$id;->video_path:I

    invoke-virtual {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 409
    iget v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIndexVideo:I

    iget-object v1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mVideoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 410
    iput v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIndexVideo:I

    goto :goto_0

    .line 412
    :cond_0
    iget v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIndexVideo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIndexVideo:I

    :goto_0
    return-void

    .line 409
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string v0, "uri"

    .line 407
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 405
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private final setCreditWorld(Z)V
    .locals 3

    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->creditWorld$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    sget-object v1, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;->setValue(Landroid/content/Context;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setLoanWorld(Z)V
    .locals 3

    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->loanWorld$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    sget-object v1, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;->setValue(Landroid/content/Context;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setMLastTimeShowAppRating(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mLastTimeShowAppRating$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    sget-object v1, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;->setValue(Landroid/content/Context;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setMagicOtp(Z)V
    .locals 3

    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->magicOtp$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    sget-object v1, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;->setValue(Landroid/content/Context;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setStaticOffLine(Z)V
    .locals 3

    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->staticOffLine$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    sget-object v1, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;->setValue(Landroid/content/Context;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->onCreate(Landroid/app/Activity;)V

    .line 95
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e02d1

    .line 96
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0b0103

    .line 97
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.babooshkaET)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mBabooshkaET:Landroidx/appcompat/widget/AppCompatEditText;

    const p1, 0x7f0b0fa6

    .line 98
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.serverNumberET)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    const p1, 0x7f0b0104

    .line 99
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.babooshkaLayout)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mBabooshkaLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0b0ad2

    .line 100
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.mOtpSwitch)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mOtpSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    const p1, 0x7f0b0ad3

    .line 101
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.mStaticSwitch)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mStaticSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    const p1, 0x7f0b0fa7

    .line 102
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.serverNumberLayout)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mServerNumberLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0b10c0

    .line 103
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.switchCreditWorld)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mCreditWorldSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    const p1, 0x7f0b10c1

    .line 104
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.switchLoanWorld)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mLoanWorldSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    const p1, 0x7f0b00eb

    .line 106
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.applicationRatingDate)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mDateAppRating:Landroidx/appcompat/widget/AppCompatEditText;

    const p1, 0x7f0b00ec

    .line 107
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.applicationRatingDateContainer)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mDateAppRatingContainer:Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    .line 109
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setMagicOtp(Z)V

    .line 110
    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mOtpSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    const/4 v1, 0x0

    const-string v2, "mOtpSwitch"

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;->setChecked(Z)V

    .line 111
    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mOtpSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    const-string v3, "lifecycle"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$1;

    invoke-direct {v4, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$1;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    invoke-virtual {v0, v2, v4}, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;->setOnCheckedChangeListener(Landroidx/lifecycle/Lifecycle;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setStaticOffLine(Z)V

    .line 116
    iget-object v2, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mStaticSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    const-string v4, "mStaticSwitch"

    if-eqz v2, :cond_a

    invoke-virtual {v2, v0}, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;->setChecked(Z)V

    .line 117
    iget-object v2, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mStaticSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$2;

    invoke-direct {v5, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$2;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    invoke-virtual {v2, v4, v5}, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;->setOnCheckedChangeListener(Landroidx/lifecycle/Lifecycle;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 133
    sget v2, Lcom/ideomobile/hapoalim/R$id;->quickGlanceDeviceId:I

    invoke-virtual {p0, v2}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v4, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$3;

    invoke-direct {v4, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$3;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    sget-object v2, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->INSTANCE:Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "REGISTER_TO_FAST_VIEW"

    invoke-virtual {v2, p0, v5, v4}, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->preference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-result-object v2

    sget-object v4, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    .line 145
    sget v5, Lcom/ideomobile/hapoalim/R$id;->quickGlanceKeySwitch:I

    invoke-virtual {p0, v5}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    invoke-virtual {v2, v1, v4}, Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;->setChecked(Z)V

    .line 146
    sget v5, Lcom/ideomobile/hapoalim/R$id;->quickGlanceKeySwitch:I

    invoke-virtual {p0, v5}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$4;

    invoke-direct {v7, v2, v4}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$4;-><init>(Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;Lkotlin/reflect/KProperty;)V

    invoke-virtual {v5, v6, v7}, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;->setOnCheckedChangeListener(Landroidx/lifecycle/Lifecycle;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 151
    sget v2, Lcom/ideomobile/hapoalim/R$id;->btnKeysDialog:I

    invoke-virtual {p0, v2}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v2}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v2

    .line 152
    sget-object v4, Lcom/poalim/networkmanager/Constants;->BUTTON_DURATION:Ljava/lang/Long;

    const-string v5, "Constants.BUTTON_DURATION"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v4}, Lio/reactivex/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v2

    .line 153
    new-instance v4, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$5;

    invoke-direct {v4, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$5;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    invoke-virtual {v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 161
    iget-object v2, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mDateAppRatingContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_8

    invoke-static {v2}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v2

    .line 162
    sget-object v4, Lcom/poalim/networkmanager/Constants;->BUTTON_DURATION:Ljava/lang/Long;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v6}, Lio/reactivex/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v2

    .line 163
    new-instance v4, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$click$1;

    invoke-direct {v4, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$click$1;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    invoke-virtual {v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 173
    invoke-direct {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setCreditWorld(Z)V

    .line 174
    iget-object v2, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mCreditWorldSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    const-string v4, "mCreditWorldSwitch"

    if-eqz v2, :cond_7

    invoke-virtual {v2, v0}, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;->setChecked(Z)V

    .line 175
    iget-object v2, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mCreditWorldSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$6;

    invoke-direct {v5, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$6;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    invoke-virtual {v2, v4, v5}, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;->setOnCheckedChangeListener(Landroidx/lifecycle/Lifecycle;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 179
    invoke-direct {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setLoanWorld(Z)V

    .line 180
    iget-object v2, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mLoanWorldSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    const-string v4, "mLoanWorldSwitch"

    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;->setChecked(Z)V

    .line 181
    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mLoanWorldSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$7;

    invoke-direct {v3, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$7;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;->setOnCheckedChangeListener(Landroidx/lifecycle/Lifecycle;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 185
    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mBabooshkaET:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->getMBabooshkaChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "me5"

    const-string v1, "me1"

    const-string v2, "me2"

    const-string v3, "me3"

    .line 187
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mVideoList:Ljava/util/ArrayList;

    .line 188
    sget v0, Lcom/ideomobile/hapoalim/R$id;->video_path:I

    invoke-virtual {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$8;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$8;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 192
    invoke-direct {p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->playVideo()V

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-direct {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->initServerList(Ljava/util/ArrayList;)V

    .line 199
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/MinionSpinnerAdapter;

    const v2, 0x7f0e02e5

    invoke-direct {v1, p0, v2, v0}, Lcom/ideomobile/hapoalim/features/minions/MinionSpinnerAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    const v2, 0x109000a

    .line 206
    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 209
    sget v2, Lcom/ideomobile/hapoalim/R$id;->server_list:I

    invoke-virtual {p0, v2}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    const-string v3, "server_list"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 212
    sget v1, Lcom/ideomobile/hapoalim/R$id;->server_list:I

    invoke-virtual {p0, v1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$9;

    invoke-direct {v2, p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$9;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 274
    sget v1, Lcom/ideomobile/hapoalim/R$id;->pre_splash_next:I

    invoke-virtual {p0, v1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    new-instance v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$10;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$10;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    .line 380
    invoke-virtual {v1}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;->getServerName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.String).toLowerCase()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "prod"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    sget v0, Lcom/ideomobile/hapoalim/R$id;->server_list:I

    invoke-virtual {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v1}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 380
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string p1, "mBabooshkaET"

    .line 185
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string p1, "mDateAppRatingContainer"

    .line 161
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method protected synthetic onDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->onDestroy(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected synthetic onPause()V
    .locals 0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->onPause(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected synthetic onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->onPostCreate(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected synthetic onPostResume()V
    .locals 0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->onPostResume(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPostResume()V

    return-void
.end method

.method protected synthetic onRestart()V
    .locals 0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->onRestart(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onRestart()V

    return-void
.end method

.method protected synthetic onResume()V
    .locals 0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->onResume(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method protected synthetic onStart()V
    .locals 0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->onStart(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    return-void
.end method

.method protected synthetic onStop()V
    .locals 0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->onStop(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
