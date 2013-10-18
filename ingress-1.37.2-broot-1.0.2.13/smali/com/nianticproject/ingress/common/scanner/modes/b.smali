.class final Lcom/nianticproject/ingress/common/scanner/modes/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/ar;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/a;

.field private final b:Lcom/nianticproject/ingress/common/j/ap;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/a;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/b;->a:Lcom/nianticproject/ingress/common/scanner/modes/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/nianticproject/ingress/common/j/ap;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/j/ap;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/b;->b:Lcom/nianticproject/ingress/common/j/ap;

    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/j/ap;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/b;->a:Lcom/nianticproject/ingress/common/scanner/modes/a;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/b;->b:Lcom/nianticproject/ingress/common/j/ap;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/a;->a(Lcom/nianticproject/ingress/common/j/ap;)Lcom/nianticproject/ingress/common/j/ap;

    move-result-object v0

    return-object v0
.end method
