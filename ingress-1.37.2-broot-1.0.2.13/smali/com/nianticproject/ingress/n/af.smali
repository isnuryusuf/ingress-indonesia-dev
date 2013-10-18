.class public final Lcom/nianticproject/ingress/n/af;
.super Lcom/nianticproject/ingress/n/p;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/nianticproject/ingress/n/p;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/n/af;->a:Z

    return-void
.end method

.method public static F()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/nianticproject/ingress/n/af;

    invoke-direct {v0}, Lcom/nianticproject/ingress/n/af;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/n/af;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/nianticproject/ingress/n/af;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/n/af;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/nianticproject/ingress/n/af;->a:Z

    return p1
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 40
    const v0, 0x7f030029

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 42
    const v0, 0x7f08007d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 43
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 46
    const v0, 0x7f080063

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 47
    const v1, 0x7f08007e

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 48
    const v1, 0x7f08007f

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 49
    const v2, 0x7f080080

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 52
    iput-boolean v6, p0, Lcom/nianticproject/ingress/n/af;->a:Z

    .line 53
    if-eqz p3, :cond_0

    .line 54
    const-string/jumbo v5, "wants_promos"

    invoke-virtual {p3, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/nianticproject/ingress/n/af;->a:Z

    .line 56
    :cond_0
    iget-boolean v5, p0, Lcom/nianticproject/ingress/n/af;->a:Z

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 58
    new-instance v5, Lcom/nianticproject/ingress/n/ag;

    invoke-direct {v5, p0, v1}, Lcom/nianticproject/ingress/n/ag;-><init>(Lcom/nianticproject/ingress/n/af;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    new-instance v5, Lcom/nianticproject/ingress/n/ah;

    invoke-direct {v5, p0, v0, v4}, Lcom/nianticproject/ingress/n/ah;-><init>(Lcom/nianticproject/ingress/n/af;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 74
    new-instance v0, Lcom/nianticproject/ingress/n/ai;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/n/ai;-><init>(Lcom/nianticproject/ingress/n/af;)V

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    return-object v3
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string/jumbo v0, "TosPromptFragment"

    return-object v0
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/n/p;->d(Landroid/os/Bundle;)V

    .line 34
    const-string/jumbo v0, "wants_promos"

    iget-boolean v1, p0, Lcom/nianticproject/ingress/n/af;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    return-void
.end method
