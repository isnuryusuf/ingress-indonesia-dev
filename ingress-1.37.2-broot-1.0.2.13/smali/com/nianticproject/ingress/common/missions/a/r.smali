.class public Lcom/nianticproject/ingress/common/missions/a/r;
.super Lcom/nianticproject/ingress/common/scanner/k;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/missions/cl;


# instance fields
.field private final d:Lcom/nianticproject/ingress/common/ui/d/a;

.field private final e:Lcom/nianticproject/ingress/common/ui/d/d;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/missions/cn;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/nianticproject/ingress/common/ui/elements/ah;

.field private h:Lcom/nianticproject/ingress/common/missions/cm;

.field private i:Lcom/nianticproject/ingress/common/missions/a/h;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/w/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/ac;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/q/e;Lcom/nianticproject/ingress/common/r;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/scanner/ad;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct/range {p0 .. p10}, Lcom/nianticproject/ingress/common/scanner/k;-><init>(Lcom/nianticproject/ingress/common/w/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/ac;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/q/e;Lcom/nianticproject/ingress/common/r;Lcom/nianticproject/ingress/common/a;Lcom/nianticproject/ingress/common/scanner/ad;)V

    .line 47
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/r;->f:Ljava/util/List;

    .line 69
    new-instance v0, Lcom/nianticproject/ingress/common/ui/d/d;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/ui/d/d;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/r;->e:Lcom/nianticproject/ingress/common/ui/d/d;

    .line 70
    new-instance v0, Lcom/nianticproject/ingress/common/ui/d/a;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a/r;->e:Lcom/nianticproject/ingress/common/ui/d/d;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/ui/d/a;-><init>(Lcom/nianticproject/ingress/common/ui/d/b;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/r;->d:Lcom/nianticproject/ingress/common/ui/d/a;

    .line 71
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/r;->d:Lcom/nianticproject/ingress/common/ui/d/a;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/missions/a/r;->addProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 74
    new-instance v0, Lcom/nianticproject/ingress/common/missions/a/h;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/missions/a/h;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/r;->i:Lcom/nianticproject/ingress/common/missions/a/h;

    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/r;->i:Lcom/nianticproject/ingress/common/missions/a/h;

    invoke-super {p0, v0}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 78
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/r;->e:Lcom/nianticproject/ingress/common/ui/d/d;

    new-instance v1, Lcom/nianticproject/ingress/common/missions/a/s;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/missions/a/s;-><init>(Lcom/nianticproject/ingress/common/missions/a/r;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/d/d;->a(Lcom/nianticproject/ingress/common/ui/d/b;)V

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/missions/a/r;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/r;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/missions/cm;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/a/r;->h:Lcom/nianticproject/ingress/common/missions/cm;

    .line 106
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/missions/cn;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/r;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/ui/elements/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 139
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/a/r;->g:Lcom/nianticproject/ingress/common/ui/elements/ah;

    .line 140
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/ui/widget/z;)V
    .locals 2
    .parameter

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a/r;->t_()V

    .line 122
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/r;->i:Lcom/nianticproject/ingress/common/missions/a/h;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/missions/a/h;->a(Lcom/nianticproject/ingress/common/ui/widget/z;)V

    .line 123
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/r;->i:Lcom/nianticproject/ingress/common/missions/a/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/a/h;->a(Z)V

    .line 124
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/r;->g:Lcom/nianticproject/ingress/common/ui/elements/ah;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/ui/elements/ah;->a(Z)V

    .line 117
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/r;->i:Lcom/nianticproject/ingress/common/missions/a/h;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/a/h;->a()V

    .line 135
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/common/missions/cn;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/r;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string/jumbo v0, "MissionScanner"

    return-object v0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/r;->h:Lcom/nianticproject/ingress/common/missions/cm;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/r;->h:Lcom/nianticproject/ingress/common/missions/cm;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/missions/cm;->a()V

    .line 112
    :cond_0
    return-void
.end method

.method public final t_()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/r;->i:Lcom/nianticproject/ingress/common/missions/a/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/a/h;->a(Lcom/nianticproject/ingress/common/ui/widget/z;)V

    .line 129
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/r;->i:Lcom/nianticproject/ingress/common/missions/a/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/a/h;->a(Z)V

    .line 130
    return-void
.end method
