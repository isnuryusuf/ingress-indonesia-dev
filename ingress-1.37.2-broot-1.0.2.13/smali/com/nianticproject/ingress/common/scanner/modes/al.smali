.class final Lcom/nianticproject/ingress/common/scanner/modes/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/modes/ak;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/al;->a:Lcom/nianticproject/ingress/common/scanner/modes/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/al;->a:Lcom/nianticproject/ingress/common/scanner/modes/ak;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/ak;->a:Lcom/nianticproject/ingress/common/scanner/modes/ah;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->m(Lcom/nianticproject/ingress/common/scanner/modes/ah;)Lcom/nianticproject/ingress/common/ui/g/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/g/s;->d()V

    .line 1086
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/al;->a:Lcom/nianticproject/ingress/common/scanner/modes/ak;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/ak;->a:Lcom/nianticproject/ingress/common/scanner/modes/ah;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->b(Lcom/nianticproject/ingress/common/scanner/modes/ah;)V

    .line 1087
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1092
    const-string/jumbo v0, "notifyModelChanged"

    return-object v0
.end method
