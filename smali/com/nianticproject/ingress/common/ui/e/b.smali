.class public final Lcom/nianticproject/ingress/common/ui/e/b;
.super Lcom/nianticproject/ingress/common/ui/d/c;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nianticproject/ingress/common/ui/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/nianticproject/ingress/common/j/ao;

.field private c:Lcom/nianticproject/ingress/common/ui/e/a;

.field private d:Lcom/nianticproject/ingress/common/ui/e/c;

.field private e:Lcom/nianticproject/ingress/common/j/as;

.field private f:Lcom/nianticproject/ingress/common/model/GameState;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/j/ao;Lcom/nianticproject/ingress/common/ui/e/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/d/c;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->c:Lcom/nianticproject/ingress/common/ui/e/a;

    .line 76
    new-instance v0, Lcom/nianticproject/ingress/common/ui/e/c;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/ui/e/c;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->d:Lcom/nianticproject/ingress/common/ui/e/c;

    .line 90
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/e/b;->b:Lcom/nianticproject/ingress/common/j/ao;

    .line 91
    invoke-static {}, Lcom/google/a/c/eq;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->a:Ljava/util/LinkedList;

    .line 92
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/ui/e/b;->d(Lcom/nianticproject/ingress/common/ui/e/a;)V

    .line 94
    return-void
.end method

.method private d(Lcom/nianticproject/ingress/common/ui/e/a;)V
    .locals 2
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/e/b;->c:Lcom/nianticproject/ingress/common/ui/e/a;

    .line 197
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->c:Lcom/nianticproject/ingress/common/ui/e/a;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/e/b;->a(Lcom/nianticproject/ingress/common/ui/d/b;)V

    .line 201
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->b:Lcom/nianticproject/ingress/common/j/ao;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ao;->l()V

    .line 202
    new-instance v0, Lcom/nianticproject/ingress/common/j/as;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/e/b;->b:Lcom/nianticproject/ingress/common/j/ao;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/j/as;-><init>(Lcom/nianticproject/ingress/common/j/ao;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->e:Lcom/nianticproject/ingress/common/j/as;

    .line 203
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->c:Lcom/nianticproject/ingress/common/ui/e/a;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/e/b;->e:Lcom/nianticproject/ingress/common/j/as;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/ui/e/a;->a(Lcom/nianticproject/ingress/common/j/as;)V

    .line 206
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->c:Lcom/nianticproject/ingress/common/ui/e/a;

    if-ne v0, p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->d:Lcom/nianticproject/ingress/common/ui/e/c;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/e/b;->c:Lcom/nianticproject/ingress/common/ui/e/a;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/ui/e/a;->a()Lcom/nianticproject/ingress/common/ui/e/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/e/c;->a(Lcom/nianticproject/ingress/common/ui/e/d;)V

    .line 209
    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/e/b;->c:Lcom/nianticproject/ingress/common/ui/e/a;

    if-eq v0, v1, :cond_1

    .line 184
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->c:Lcom/nianticproject/ingress/common/ui/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->c:Lcom/nianticproject/ingress/common/ui/e/a;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/e/b;->e:Lcom/nianticproject/ingress/common/j/as;

    iput-object v2, p0, Lcom/nianticproject/ingress/common/ui/e/b;->c:Lcom/nianticproject/ingress/common/ui/e/a;

    iput-object v2, p0, Lcom/nianticproject/ingress/common/ui/e/b;->e:Lcom/nianticproject/ingress/common/j/as;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/e/b;->d:Lcom/nianticproject/ingress/common/ui/e/c;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/e/c;->a()V

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/e/a;->b()V

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/j/as;->l()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->c:Lcom/nianticproject/ingress/common/ui/e/a;

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/e/a;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/e/b;->d(Lcom/nianticproject/ingress/common/ui/e/a;)V

    .line 193
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 169
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/e/b;->c:Lcom/nianticproject/ingress/common/ui/e/a;

    invoke-interface {v1, p1}, Lcom/nianticproject/ingress/common/ui/e/a;->a(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/e/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    :goto_0
    const-string/jumbo v1, "Top mode died."

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 171
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/e/b;->a()Z

    .line 173
    :cond_0
    return-void

    .line 170
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 2
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/e/b;->f:Lcom/nianticproject/ingress/common/model/GameState;

    .line 230
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/e/a;

    .line 231
    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/ui/e/a;->a(Lcom/nianticproject/ingress/common/model/GameState;)V

    goto :goto_0

    .line 233
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 133
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/e/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    move v1, v0

    .line 134
    :goto_0
    if-eqz v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/e/a;

    .line 136
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/e/b;->e()V

    .line 138
    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/e/a;->dispose()V

    .line 140
    :cond_0
    return v1

    .line 133
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/ej;)Z
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->c:Lcom/nianticproject/ingress/common/ui/e/a;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/ui/e/a;->a(Lcom/nianticproject/ingress/common/scanner/ej;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Z
    .locals 1
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->c:Lcom/nianticproject/ingress/common/ui/e/a;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/ui/e/a;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/ui/e/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/e/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/e/a;

    .line 154
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/e/b;->a:Ljava/util/LinkedList;

    .line 156
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/nianticproject/ingress/common/ui/e/a;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/google/a/c/eq;->b([Ljava/lang/Object;)Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->a:Ljava/util/LinkedList;

    .line 157
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/e/b;->e()V

    .line 160
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/e/a;

    .line 161
    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/e/a;->dispose()V

    goto :goto_0
.end method

.method public final b(Lcom/nianticproject/ingress/common/ui/e/a;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->f:Lcom/nianticproject/ingress/common/model/GameState;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->f:Lcom/nianticproject/ingress/common/model/GameState;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/ui/e/a;->a(Lcom/nianticproject/ingress/common/model/GameState;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 112
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/e/b;->e()V

    .line 113
    return-void
.end method

.method public final c(Lcom/nianticproject/ingress/common/ui/e/a;)Lcom/nianticproject/ingress/common/ui/e/a;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/e/a;

    .line 123
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/ui/e/b;->b(Lcom/nianticproject/ingress/common/ui/e/a;)V

    .line 124
    return-object v0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->f:Lcom/nianticproject/ingress/common/model/GameState;

    if-nez v0, :cond_1

    .line 250
    :cond_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/e/a;

    .line 248
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/e/b;->f:Lcom/nianticproject/ingress/common/model/GameState;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/common/ui/e/a;->a(Lcom/nianticproject/ingress/common/model/GameState;)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 265
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/e/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 270
    .line 271
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3}, Ljava/util/Formatter;-><init>()V

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/e/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/e/a;

    .line 274
    if-eqz v1, :cond_0

    .line 275
    const-string/jumbo v1, ", "

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 279
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 280
    const-class v5, Lcom/nianticproject/ingress/common/scanner/ex;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 281
    const-string/jumbo v1, "ModeWrapper->%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/ex;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/ex;->c()Lcom/nianticproject/ingress/common/ui/e/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v3, v1, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v1, v2

    goto :goto_0

    .line 283
    :cond_1
    const-string/jumbo v0, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v3, v0, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v1, v2

    .line 285
    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 289
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    throw v0
.end method
