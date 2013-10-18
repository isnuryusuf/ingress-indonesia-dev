.class public Lcom/nianticproject/ingress/CredentialsActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private b:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/CredentialsActivity;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/CredentialsActivity;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nianticproject/ingress/CredentialsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    return-object v0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->a()Lcom/nianticproject/ingress/NemesisApplication;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/nianticproject/ingress/CredentialsActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public static a(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 54
    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->a()Lcom/nianticproject/ingress/NemesisApplication;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/nianticproject/ingress/CredentialsActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 56
    const-string/jumbo v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/CredentialsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-static {p0}, Lcom/nianticproject/ingress/o/a;->c(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    sget-object v0, Lcom/nianticproject/ingress/CredentialsActivity;->a:Lcom/nianticproject/ingress/common/w/aa;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 122
    packed-switch p1, :pswitch_data_0

    .line 134
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 136
    :goto_0
    return-void

    .line 124
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 126
    invoke-static {}, Lcom/nianticproject/ingress/c;->a()Lcom/nianticproject/ingress/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/c;->e()V

    .line 131
    :goto_1
    invoke-virtual {p0}, Lcom/nianticproject/ingress/CredentialsActivity;->finish()V

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/c;->a()Lcom/nianticproject/ingress/c;

    invoke-static {}, Lcom/nianticproject/ingress/c;->f()V

    goto :goto_1

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/CredentialsActivity;->setContentView(I)V

    .line 76
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/CredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/CredentialsActivity;->b:Landroid/view/View;

    .line 77
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/CredentialsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 78
    new-instance v1, Lcom/nianticproject/ingress/at;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/at;-><init>(Lcom/nianticproject/ingress/CredentialsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/CredentialsActivity;->setIntent(Landroid/content/Intent;)V

    .line 91
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 96
    invoke-virtual {p0}, Lcom/nianticproject/ingress/CredentialsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 97
    const-string/jumbo v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 98
    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/nianticproject/ingress/CredentialsActivity;->b:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0, v3}, Lcom/nianticproject/ingress/CredentialsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/CredentialsActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
