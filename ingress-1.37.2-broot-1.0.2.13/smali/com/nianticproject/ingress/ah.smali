.class final Lcom/nianticproject/ingress/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "coda.ttf"

    invoke-static {v0, p1, v1}, Lcom/nianticproject/ingress/ui/aj;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 48
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nianticproject/ingress/ah;->a:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/ah;->a:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/ah;->a:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method
