.class final Lcom/nianticproject/ingress/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/AndroidComm;

.field private final b:I


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/AndroidComm;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/nianticproject/ingress/z;->a:Lcom/nianticproject/ingress/AndroidComm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p2, p0, Lcom/nianticproject/ingress/z;->b:I

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/AndroidComm;IB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/z;-><init>(Lcom/nianticproject/ingress/AndroidComm;I)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 114
    const-string/jumbo v0, "Comm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Tab"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/nianticproject/ingress/z;->a:Lcom/nianticproject/ingress/AndroidComm;

    iget v1, p0, Lcom/nianticproject/ingress/z;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/AndroidComm;->a(IZ)V

    .line 116
    return-void
.end method
