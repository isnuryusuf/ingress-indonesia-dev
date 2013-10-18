.class public Lcom/nianticproject/ingress/ui/TitleBar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageButton;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/ui/TitleBar;->c:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/ui/TitleBar;->c:Z

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/ui/TitleBar;->c:Z

    .line 60
    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/nianticproject/ingress/ui/TitleBar;
    .locals 1
    .parameter

    .prologue
    .line 48
    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/ui/TitleBar;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/ui/TitleBar;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/TitleBar;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/ui/TitleBar;->c:Z

    .line 109
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/TitleBar;->b:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 110
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/TitleBar;->c:Z

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/TitleBar;->b:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/TitleBar;->b:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/TitleBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 90
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ui/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/TitleBar;->a:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f080094

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ui/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/TitleBar;->b:Landroid/widget/ImageButton;

    .line 92
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/TitleBar;->b:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/TitleBar;->b:Landroid/widget/ImageButton;

    new-instance v1, Lcom/nianticproject/ingress/ui/ah;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/ui/ah;-><init>(Lcom/nianticproject/ingress/ui/TitleBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_0
    return-void
.end method
