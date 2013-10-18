.class public Lcom/nianticproject/ingress/common/scanner/modes/bf;
.super Lcom/nianticproject/ingress/common/scanner/modes/ag;
.source "SourceFile"


# static fields
.field private static final g:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private h:Lcom/nianticproject/ingress/common/scanner/modes/bg;

.field private i:Lcom/nianticproject/ingress/common/itemupgrade/c;

.field private final j:Lcom/nianticproject/ingress/gameentity/f;

.field private k:Lcom/nianticproject/ingress/common/model/GameState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/scanner/modes/bf;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->g:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/modes/j;Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-interface {p3}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nianticproject/ingress/common/scanner/modes/ag;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/modes/j;Lcom/nianticproject/ingress/common/scanner/ej;)V

    .line 49
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->j:Lcom/nianticproject/ingress/gameentity/f;

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/bf;->a(Lcom/nianticproject/ingress/gameentity/f;)V

    .line 51
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/bf;->a(Lcom/nianticproject/ingress/common/model/k;)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/bf;Lcom/nianticproject/ingress/common/itemupgrade/c;)Lcom/nianticproject/ingress/common/itemupgrade/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->i:Lcom/nianticproject/ingress/common/itemupgrade/c;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/bf;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->j:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/modes/bf;)Lcom/nianticproject/ingress/common/itemupgrade/c;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->i:Lcom/nianticproject/ingress/common/itemupgrade/c;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/scanner/modes/bf;)Lcom/nianticproject/ingress/common/model/GameState;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->k:Lcom/nianticproject/ingress/common/model/GameState;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/a/d/u;Lcom/google/a/d/u;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->i:Lcom/nianticproject/ingress/common/itemupgrade/c;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->i:Lcom/nianticproject/ingress/common/itemupgrade/c;

    invoke-virtual {v0, p1, p2}, Lcom/nianticproject/ingress/common/itemupgrade/c;->a(Lcom/google/a/d/u;Lcom/google/a/d/u;)V

    .line 107
    :cond_0
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/as;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/ag;->a(Lcom/nianticproject/ingress/common/j/as;)V

    .line 58
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/bg;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/bg;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/bf;Lcom/nianticproject/ingress/common/j/as;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->h:Lcom/nianticproject/ingress/common/scanner/modes/bg;

    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->h:Lcom/nianticproject/ingress/common/scanner/modes/bg;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 60
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->k:Lcom/nianticproject/ingress/common/model/GameState;

    .line 99
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/bf;->b(Lcom/nianticproject/ingress/common/model/GameState;)V

    .line 100
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 6
    .parameter

    .prologue
    const v2, 0x43408000

    const/high16 v3, 0x4220

    const/4 v4, 0x0

    .line 122
    if-nez p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->j:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v1

    const v5, 0x3ea8f5c3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nianticproject/ingress/common/scanner/modes/bf;->a(Lcom/nianticproject/ingress/common/scanner/ej;FFFF)V

    .line 135
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v1

    const v5, 0x3ecccccd

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nianticproject/ingress/common/scanner/modes/bf;->a(Lcom/nianticproject/ingress/common/scanner/ej;FFFF)V

    goto :goto_0
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->i:Lcom/nianticproject/ingress/common/itemupgrade/c;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->i:Lcom/nianticproject/ingress/common/itemupgrade/c;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/itemupgrade/c;->a(F)V

    .line 80
    :cond_0
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/ag;->a(F)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/ej;)Z
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->i:Lcom/nianticproject/ingress/common/itemupgrade/c;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->i:Lcom/nianticproject/ingress/common/itemupgrade/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->a()V

    .line 114
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ag;->b()V

    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->h:Lcom/nianticproject/ingress/common/scanner/modes/bg;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->h:Lcom/nianticproject/ingress/common/scanner/modes/bg;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/modes/bg;->e()V

    .line 67
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->h:Lcom/nianticproject/ingress/common/scanner/modes/bg;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->i:Lcom/nianticproject/ingress/common/itemupgrade/c;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->i:Lcom/nianticproject/ingress/common/itemupgrade/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->e()V

    .line 71
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->i:Lcom/nianticproject/ingress/common/itemupgrade/c;

    .line 73
    :cond_1
    return-void
.end method

.method final b(Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->i:Lcom/nianticproject/ingress/common/itemupgrade/c;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->i:Lcom/nianticproject/ingress/common/itemupgrade/c;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/itemupgrade/c;->a(Lcom/nianticproject/ingress/common/model/GameState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->i:Lcom/nianticproject/ingress/common/itemupgrade/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/itemupgrade/c;->e()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bf;->i:Lcom/nianticproject/ingress/common/itemupgrade/c;

    .line 91
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/modes/bf;->c()V

    .line 94
    :cond_0
    return-void
.end method
