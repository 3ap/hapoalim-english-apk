.class public final Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PreSplashActivity.kt"


# annotations
.annotation build Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreSplashActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreSplashActivity.kt\ncom/ideomobile/hapoalim/features/minions/PreSplashActivity\n*L\n1#1,306:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final creditWorld$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

.field private final existsOneIdentifier$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

.field private final mBabooshkaChannel$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

.field private mBabooshkaET:Landroidx/appcompat/widget/AppCompatEditText;

.field private mBabooshkaLayout:Landroid/widget/LinearLayout;

.field private mCreditWorldSwitch:Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;

.field private mIndexVideo:I

.field private mIsBabooshkaSelected:Z

.field private mIsPreProdSelected:Z

.field private mIsProdBetaSelected:Z

.field private mIsProdSelected:Z

.field private mOtpSwitch:Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;

.field private mPasswordOnlySwitch:Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;

.field private mServerNumber:Ljava/lang/String;

.field private mServerNumberET:Landroidx/appcompat/widget/AppCompatEditText;

.field private mServerNumberLayout:Landroid/widget/LinearLayout;

.field private mStaticSwitch:Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;

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

    .prologue
    const/4 v0, 0x6

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "magicOtp"

    const-string v4, "getMagicOtp()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

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

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "existsOneIdentifier"

    const-string v4, "getExistsOneIdentifier()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "creditWorld"

    const-string v4, "getCreditWorld()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

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

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    const-class v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "channel"

    const-string v4, "<v#0>"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 46
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 65
    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mServerNumber:Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->INSTANCE:Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    const-string v2, "magic_otp"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->preference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->magicOtp$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    .line 69
    sget-object v0, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->INSTANCE:Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;

    const-string v2, "static_offline"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->preference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-result-object v0

    const/4 v0, 0x1
    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->staticOffLine$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    .line 70
    sget-object v0, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->INSTANCE:Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;

    const-string v2, "SHOW_ONE_IDENTIFIER"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->preference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->existsOneIdentifier$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    .line 71
    sget-object v0, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->INSTANCE:Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;

    const-string v2, "ccw"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->preference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->creditWorld$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    .line 74
    sget-object v0, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->INSTANCE:Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;

    const-string v2, "babooshka_channel"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->preference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mBabooshkaChannel$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    return-void
.end method

.method public static final synthetic access$getMBabooshkaET$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Landroidx/appcompat/widget/AppCompatEditText;
    .locals 1

    .prologue
    .line 46
    iget-object p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mBabooshkaET:Landroidx/appcompat/widget/AppCompatEditText;

    if-nez p0, :cond_0

    const-string v0, "mBabooshkaET"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMBabooshkaLayout$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 46
    iget-object p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mBabooshkaLayout:Landroid/widget/LinearLayout;

    if-nez p0, :cond_0

    const-string v0, "mBabooshkaLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMIsBabooshkaSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Z
    .locals 0

    .prologue
    .line 46
    iget-boolean p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsBabooshkaSelected:Z

    return p0
.end method

.method public static final synthetic access$getMIsPreProdSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Z
    .locals 0

    .prologue
    .line 46
    iget-boolean p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsPreProdSelected:Z

    return p0
.end method

.method public static final synthetic access$getMIsProdBetaSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Z
    .locals 0

    .prologue
    .line 46
    iget-boolean p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsProdBetaSelected:Z

    return p0
.end method

.method public static final synthetic access$getMIsProdSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Z
    .locals 0

    .prologue
    .line 46
    iget-boolean p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsProdSelected:Z

    return p0
.end method

.method public static final synthetic access$getMServerNumberLayout$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 46
    iget-object p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mServerNumberLayout:Landroid/widget/LinearLayout;

    if-nez p0, :cond_0

    const-string v0, "mServerNumberLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$playVideo(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->playVideo()V

    return-void
.end method

.method public static final synthetic access$setCreditWorld$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setCreditWorld(Z)V

    return-void
.end method

.method public static final synthetic access$setExistsOneIdentifier$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setExistsOneIdentifier(Z)V

    return-void
.end method

.method public static final synthetic access$setMIsBabooshkaSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsBabooshkaSelected:Z

    return-void
.end method

.method public static final synthetic access$setMIsPreProdSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsPreProdSelected:Z

    return-void
.end method

.method public static final synthetic access$setMIsProdBetaSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsProdBetaSelected:Z

    return-void
.end method

.method public static final synthetic access$setMIsProdSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsProdSelected:Z

    return-void
.end method

.method public static final synthetic access$setMagicOtp$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setMagicOtp(Z)V

    return-void
.end method

.method public static final synthetic access$setStaticOffLine$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setStaticOffLine(Z)V

    return-void
.end method

.method private final getMBabooshkaChannel()Ljava/lang/String;
    .locals 3

    .prologue
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

    .prologue
    move-object/from16 v0, p1

    .line 285
    new-instance v9, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const-string v2, "1"

    const-string v3, "Prod"

    const-string v5, "https://iphone.bankhapoalim.co.il/"

    const-string v6, "https://static.bankhapoalim.co.il/"

    const-string v7, "prod"

    const-string v8, "https://gphone.bankhapoalim.co.il/"

    const v4, 0x7f0802bf

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const-string v11, "2"

    const-string v12, "Prod Beta"

    const-string v14, "https://iphone.bankhapoalim.co.il/"

    const-string v15, "https://static.bankhapoalim.co.il/"

    const-string v16, "prod beta"

    const-string v17, "https://gphone.bankhapoalim.co.il/"

    const v13, 0x7f0802b9

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const-string v3, "3"

    const-string v4, "Pre Prod"

    const-string v6, "https://iphonepre.bankhapoalim.co.il/"

    const-string v7, "https://staticpre.bankhapoalim.co.il/"

    const-string v8, "pre prod"

    const-string v9, "https://gphonepre.bankhapoalim.co.il/"

    const v5, 0x7f0802ba

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const-string v11, "4"

    const-string v12, "Mob1"

    const-string v14, "https://mob1.bankhapoalim.co.il/"

    const-string v15, "https://static.bankhapoalim.co.il/"

    const-string v16, "mob1"

    const-string v17, "https://gphone1.bankhapoalim.co.il/"

    const v13, 0x7f0802be

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const-string v3, "5"

    const-string v4, "Mob2"

    const-string v6, "https://mob2.bankhapoalim.co.il/"

    const-string v7, "https://static.bankhapoalim.co.il/"

    const-string v8, "mob2"

    const-string v9, "https://gphone2.bankhapoalim.co.il/"

    const v5, 0x7f0802bc

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const-string v11, "6"

    const-string v12, "Mob3"

    const-string v14, "https://mob3.bankhapoalim.co.il/"

    const-string v15, "https://static.bankhapoalim.co.il/"

    const-string v16, "mob3"

    const-string v17, "https://gphone3.bankhapoalim.co.il/"

    const v13, 0x7f0802bd

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const-string v3, "7"

    const-string v4, "BABOOSHKA"

    const-string v6, "http://babooshka/account3/baboocha-"

    const-string v7, "https://static.bankhapoalim.co.il/"

    const-string v8, "babooshka"

    const-string v9, "https://gphone3.bankhapoalim.co.il/"

    const v5, 0x7f08007c

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final playVideo()V
    .locals 3

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/raw/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mVideoList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const-string v2, "mVideoList"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget v2, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIndexVideo:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.parse(videoPath)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->uri:Landroid/net/Uri;

    .line 297
    sget v0, Lcom/ideomobile/hapoalim/R$id;->video_path:I

    invoke-virtual {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->uri:Landroid/net/Uri;

    if-nez v1, :cond_1

    const-string v2, "uri"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 298
    sget v0, Lcom/ideomobile/hapoalim/R$id;->video_path:I

    invoke-virtual {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 299
    iget v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIndexVideo:I

    iget-object v1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mVideoList:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    const-string v2, "mVideoList"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 300
    iput v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIndexVideo:I

    goto :goto_0

    .line 302
    :cond_3
    iget v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIndexVideo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIndexVideo:I

    :goto_0
    return-void
.end method

.method private final setCreditWorld(Z)V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->creditWorld$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;->setValue(Landroid/content/Context;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setExistsOneIdentifier(Z)V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->existsOneIdentifier$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;->setValue(Landroid/content/Context;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setMagicOtp(Z)V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->magicOtp$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;->setValue(Landroid/content/Context;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setStaticOffLine(Z)V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->staticOffLine$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;->setValue(Landroid/content/Context;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    .prologue
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

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0211

    .line 78
    invoke-virtual {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setContentView(I)V

    const p1, 0x7f0a00c0

    .line 80
    invoke-virtual {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.babooshkaET)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mBabooshkaET:Landroidx/appcompat/widget/AppCompatEditText;

    const p1, 0x7f0a0b41

    .line 81
    invoke-virtual {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.serverNumberET)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mServerNumberET:Landroidx/appcompat/widget/AppCompatEditText;

    const p1, 0x7f0a00c1

    .line 82
    invoke-virtual {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.babooshkaLayout)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mBabooshkaLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0889

    .line 83
    invoke-virtual {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.mOtpSwitch)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mOtpSwitch:Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;

    const p1, 0x7f0a088a

    .line 84
    invoke-virtual {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.mStaticSwitch)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mStaticSwitch:Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;

    const p1, 0x7f0a0b42

    .line 85
    invoke-virtual {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.serverNumberLayout)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mServerNumberLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0c11

    .line 86
    invoke-virtual {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.switchPasswordOnly)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mPasswordOnlySwitch:Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;

    const p1, 0x7f0a0c0f

    .line 87
    invoke-virtual {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.switchCreditWorld)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mCreditWorldSwitch:Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;

    const/4 p1, 0x1

    .line 89
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setMagicOtp(Z)V

    .line 90
    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mOtpSwitch:Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;

    if-nez v0, :cond_0

    const-string v1, "mOtpSwitch"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;->setChecked(Z)V

    .line 91
    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mOtpSwitch:Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;

    if-nez v0, :cond_1

    const-string v1, "mOtpSwitch"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    const-string v2, "lifecycle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$1;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$1;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    check-cast v2, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;->setOnCheckedChangeListener(Landroidx/lifecycle/Lifecycle;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setStaticOffLine(Z)V

    .line 96
    iget-object v1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mStaticSwitch:Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;

    if-nez v1, :cond_2

    const-string v2, "mStaticSwitch"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v0}, Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;->setChecked(Z)V

    .line 97
    iget-object v1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mStaticSwitch:Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;

    if-nez v1, :cond_3

    const-string v2, "mStaticSwitch"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    const-string v3, "lifecycle"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$2;

    invoke-direct {v3, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$2;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    check-cast v3, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;->setOnCheckedChangeListener(Landroidx/lifecycle/Lifecycle;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 108
    invoke-direct {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setExistsOneIdentifier(Z)V

    .line 109
    iget-object v1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mPasswordOnlySwitch:Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;

    if-nez v1, :cond_4

    const-string v2, "mPasswordOnlySwitch"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1, v0}, Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;->setChecked(Z)V

    .line 110
    iget-object v1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mPasswordOnlySwitch:Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;

    if-nez v1, :cond_5

    const-string v2, "mPasswordOnlySwitch"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    const-string v3, "lifecycle"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$3;

    invoke-direct {v3, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$3;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    check-cast v3, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2, v3}, Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;->setOnCheckedChangeListener(Landroidx/lifecycle/Lifecycle;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    invoke-direct {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setCreditWorld(Z)V

    .line 115
    iget-object v1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mCreditWorldSwitch:Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;

    if-nez v1, :cond_6

    const-string v2, "mCreditWorldSwitch"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v1, v0}, Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;->setChecked(Z)V

    .line 116
    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mCreditWorldSwitch:Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;

    if-nez v0, :cond_7

    const-string v1, "mCreditWorldSwitch"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    const-string v2, "lifecycle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$4;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$4;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    check-cast v2, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/ideomobile/hapoalim/widgets/SmallAnimatedSwitchButton;->setOnCheckedChangeListener(Landroidx/lifecycle/Lifecycle;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mBabooshkaET:Landroidx/appcompat/widget/AppCompatEditText;

    if-nez v0, :cond_8

    const-string v1, "mBabooshkaET"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-direct {p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->getMBabooshkaChannel()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "me5"

    const-string v1, "me1"

    const-string v2, "me2"

    const-string v3, "me3"

    .line 123
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mVideoList:Ljava/util/ArrayList;

    .line 124
    sget v0, Lcom/ideomobile/hapoalim/R$id;->video_path:I

    invoke-virtual {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$5;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$5;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    check-cast v1, Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 129
    invoke-direct {p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->playVideo()V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-direct {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->initServerList(Ljava/util/ArrayList;)V

    .line 136
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/MinionSpinnerAdapter;

    .line 137
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const v3, 0x7f0d0221

    .line 136
    invoke-direct {v1, v2, v3, v0}, Lcom/ideomobile/hapoalim/features/minions/MinionSpinnerAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    const v2, 0x109000a

    .line 143
    invoke-virtual {v1, v2}, Lcom/ideomobile/hapoalim/features/minions/MinionSpinnerAdapter;->setDropDownViewResource(I)V

    .line 146
    sget v2, Lcom/ideomobile/hapoalim/R$id;->server_list:I

    invoke-virtual {p0, v2}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    const-string v3, "server_list"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 149
    sget v1, Lcom/ideomobile/hapoalim/R$id;->server_list:I

    invoke-virtual {p0, v1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    const-string v2, "server_list"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$6;

    invoke-direct {v2, p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$6;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Ljava/util/ArrayList;)V

    check-cast v2, Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 192
    sget v1, Lcom/ideomobile/hapoalim/R$id;->pre_splash_next:I

    invoke-virtual {p0, v1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    new-instance v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$7;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$7;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    .line 276
    invoke-virtual {v1}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;->getServerName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.String).toLowerCase()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "prod"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 277
    sget v2, Lcom/ideomobile/hapoalim/R$id;->server_list:I

    invoke-virtual {p0, v2}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v1}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 276
    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    return-void
.end method
