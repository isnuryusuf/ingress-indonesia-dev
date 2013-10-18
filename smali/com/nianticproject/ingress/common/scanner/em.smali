.class public Lcom/nianticproject/ingress/common/scanner/em;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/w/aa;

.field private final b:Lcom/nianticproject/ingress/common/scanner/k;

.field private final c:Lcom/nianticproject/ingress/common/scanner/en;

.field private final d:Lcom/nianticproject/ingress/common/r;

.field private e:Lcom/nianticproject/ingress/common/u;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/nianticproject/ingress/common/scanner/z;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/en;Lcom/nianticproject/ingress/common/r;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/scanner/em;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/em;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 83
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/em;->b:Lcom/nianticproject/ingress/common/scanner/k;

    .line 84
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/em;->c:Lcom/nianticproject/ingress/common/scanner/en;

    .line 85
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/em;->d:Lcom/nianticproject/ingress/common/r;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/em;->g:Z

    .line 87
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/em;->f:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/em;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 111
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/em;->e:Lcom/nianticproject/ingress/common/u;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/em;->e:Lcom/nianticproject/ingress/common/u;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/u;->a()V

    .line 113
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/em;->e:Lcom/nianticproject/ingress/common/u;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/em;->h:Lcom/nianticproject/ingress/common/scanner/z;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/em;->h:Lcom/nianticproject/ingress/common/scanner/z;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/z;->a()V

    .line 118
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/em;->h:Lcom/nianticproject/ingress/common/scanner/z;

    .line 120
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/em;->c:Lcom/nianticproject/ingress/common/scanner/en;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/em;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/scanner/en;->a(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;)V
    .locals 5
    .parameter

    .prologue
    .line 129
    if-nez p1, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/em;->c()V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;->getPortalGuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/em;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;->getPortalGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/em;->f:Ljava/lang/String;

    .line 139
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;->getPortalLocation()Lcom/google/a/d/u;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/em;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/k;->E()Lcom/google/a/d/u;

    move-result-object v1

    .line 141
    invoke-virtual {v1, v0}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v1

    .line 143
    const-wide/high16 v3, 0x4069

    cmpl-double v1, v1, v3

    if-lez v1, :cond_4

    .line 144
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/em;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Centering scanner to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/a/d/u;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/em;->h:Lcom/nianticproject/ingress/common/scanner/z;

    if-eqz v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/em;->h:Lcom/nianticproject/ingress/common/scanner/z;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/z;->a()V

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/em;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/k;->C()Lcom/nianticproject/ingress/common/scanner/z;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/em;->h:Lcom/nianticproject/ingress/common/scanner/z;

    .line 151
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/em;->e:Lcom/nianticproject/ingress/common/u;

    if-nez v1, :cond_3

    .line 152
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/em;->d:Lcom/nianticproject/ingress/common/r;

    invoke-static {}, Lcom/nianticproject/ingress/common/q;->e()Lcom/nianticproject/ingress/knobs/ScannerKnobs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/knobs/ScannerKnobs;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/r;->a(I)Lcom/nianticproject/ingress/common/u;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/em;->e:Lcom/nianticproject/ingress/common/u;

    .line 154
    :cond_3
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/em;->e:Lcom/nianticproject/ingress/common/u;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/u;->a(Lcom/google/a/d/u;)V

    .line 156
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/em;->d:Lcom/nianticproject/ingress/common/r;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/r;->b()V

    .line 157
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/em;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/google/a/d/u;)V

    .line 158
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/em;->c:Lcom/nianticproject/ingress/common/scanner/en;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/scanner/en;->b(Lcom/google/a/d/u;)V

    .line 161
    :cond_4
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/em;->c:Lcom/nianticproject/ingress/common/scanner/en;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/scanner/en;->a(Lcom/google/a/d/u;)V

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/shared/ai;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/em;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {p3}, Lcom/nianticproject/ingress/common/scanner/ea;->a(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/f;Lcom/badlogic/gdx/graphics/Color;)V

    .line 174
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/em;->g:Z

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/em;->c()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/em;->g:Z

    .line 103
    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/em;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->B()Lcom/nianticproject/ingress/common/ui/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/e/b;->b()V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/em;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 177
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/em;->c:Lcom/nianticproject/ingress/common/scanner/en;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/scanner/en;->a(Z)V

    .line 178
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
