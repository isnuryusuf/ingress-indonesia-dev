.class final Landroid/support/v4/app/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/a/f",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Landroid/os/Bundle;

.field c:Landroid/support/v4/app/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/x",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/support/v4/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/a/d",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field f:Z

.field g:Ljava/lang/Object;

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Landroid/support/v4/app/z;

.field final synthetic o:Landroid/support/v4/app/y;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/y;Landroid/support/v4/app/x;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 226
    iput-object p1, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/z;->a:I

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/os/Bundle;

    .line 229
    iput-object p2, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/app/x;

    .line 230
    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 233
    iget-boolean v0, p0, Landroid/support/v4/app/z;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/z;->j:Z

    if-eqz v0, :cond_1

    .line 237
    iput-boolean v2, p0, Landroid/support/v4/app/z;->h:Z

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/z;->h:Z

    if-nez v0, :cond_0

    .line 246
    iput-boolean v2, p0, Landroid/support/v4/app/z;->h:Z

    .line 248
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  Starting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/app/x;

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/app/x;

    iget v1, p0, Landroid/support/v4/app/z;->a:I

    iget-object v1, p0, Landroid/support/v4/app/z;->b:Landroid/os/Bundle;

    invoke-interface {v0}, Landroid/support/v4/app/x;->a()Landroid/support/v4/a/d;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    .line 252
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/app/z;->m:Z

    if-nez v0, :cond_5

    .line 260
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    iget v1, p0, Landroid/support/v4/app/z;->a:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/a/d;->a(ILandroid/support/v4/a/f;)V

    .line 261
    iput-boolean v2, p0, Landroid/support/v4/app/z;->m:Z

    .line 263
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    invoke-virtual {v0}, Landroid/support/v4/a/d;->j()V

    goto :goto_0
.end method

.method public final a(Landroid/support/v4/a/d;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/d",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 360
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onLoadComplete: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/z;->l:Z

    if-eqz v0, :cond_2

    .line 363
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

    .line 413
    :cond_1
    :goto_0
    return-void

    .line 367
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    iget v1, p0, Landroid/support/v4/app/z;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_3

    .line 370
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

    goto :goto_0

    .line 374
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/z;->n:Landroid/support/v4/app/z;

    .line 375
    if-eqz v0, :cond_5

    .line 379
    sget-boolean v1, Landroid/support/v4/app/y;->a:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "  Switching to pending loader: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    :cond_4
    iput-object v3, p0, Landroid/support/v4/app/z;->n:Landroid/support/v4/app/z;

    .line 381
    iget-object v1, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v1, v1, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    iget v2, p0, Landroid/support/v4/app/z;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/c/d;->a(ILjava/lang/Object;)V

    .line 382
    invoke-virtual {p0}, Landroid/support/v4/app/z;->c()V

    .line 383
    iget-object v1, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/y;->a(Landroid/support/v4/app/z;)V

    goto :goto_0

    .line 389
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/lang/Object;

    if-ne v0, p2, :cond_6

    iget-boolean v0, p0, Landroid/support/v4/app/z;->e:Z

    if-nez v0, :cond_7

    .line 390
    :cond_6
    iput-object p2, p0, Landroid/support/v4/app/z;->g:Ljava/lang/Object;

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/z;->e:Z

    .line 392
    iget-boolean v0, p0, Landroid/support/v4/app/z;->h:Z

    if-eqz v0, :cond_7

    .line 393
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/z;->b(Landroid/support/v4/a/d;Ljava/lang/Object;)V

    .line 403
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->c:Landroid/support/v4/c/d;

    iget v1, p0, Landroid/support/v4/app/z;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    .line 404
    if-eqz v0, :cond_8

    if-eq v0, p0, :cond_8

    .line 405
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/z;->f:Z

    .line 406
    invoke-virtual {v0}, Landroid/support/v4/app/z;->c()V

    .line 407
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->c:Landroid/support/v4/c/d;

    iget v1, p0, Landroid/support/v4/app/z;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->b(I)V

    .line 410
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    invoke-virtual {v0}, Landroid/support/v4/app/y;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 411
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->d()V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 449
    :goto_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/z;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 450
    const-string/jumbo v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 451
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/app/x;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 452
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 453
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/a/d;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 456
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/z;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/z;->f:Z

    if-eqz v0, :cond_2

    .line 457
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/z;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 458
    const-string/jumbo v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/z;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 459
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 461
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/z;->h:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 462
    const-string/jumbo v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/z;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 463
    const-string/jumbo v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/z;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 464
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/z;->i:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 465
    const-string/jumbo v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/z;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 466
    const-string/jumbo v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/z;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 467
    iget-object v0, p0, Landroid/support/v4/app/z;->n:Landroid/support/v4/app/z;

    if-eqz v0, :cond_3

    .line 468
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Landroid/support/v4/app/z;->n:Landroid/support/v4/app/z;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    iget-object p0, p0, Landroid/support/v4/app/z;->n:Landroid/support/v4/app/z;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 472
    :cond_3
    return-void
.end method

.method final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 312
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  Stopping: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/app/z;->h:Z

    .line 314
    iget-boolean v0, p0, Landroid/support/v4/app/z;->i:Z

    if-nez v0, :cond_1

    .line 315
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/z;->m:Z

    if-eqz v0, :cond_1

    .line 317
    iput-boolean v2, p0, Landroid/support/v4/app/z;->m:Z

    .line 318
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    invoke-virtual {v0, p0}, Landroid/support/v4/a/d;->a(Landroid/support/v4/a/f;)V

    .line 319
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    invoke-virtual {v0}, Landroid/support/v4/a/d;->l()V

    .line 322
    :cond_1
    return-void
.end method

.method final b(Landroid/support/v4/a/d;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/d",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/app/x;

    if-eqz v0, :cond_2

    .line 417
    const/4 v0, 0x0

    .line 418
    iget-object v1, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v1, v1, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_4

    .line 419
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->s:Ljava/lang/String;

    .line 420
    iget-object v1, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v1, v1, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/k;

    const-string/jumbo v2, "onLoadFinished"

    iput-object v2, v1, Landroid/support/v4/app/k;->s:Ljava/lang/String;

    move-object v1, v0

    .line 423
    :goto_0
    :try_start_0
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "  onLoadFinished in "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p2, v2}, Landroid/support/v4/c/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/app/x;

    invoke-interface {v0, p2}, Landroid/support/v4/app/x;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/k;

    iput-object v1, v0, Landroid/support/v4/app/k;->s:Ljava/lang/String;

    .line 431
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/z;->f:Z

    .line 433
    :cond_2
    return-void

    .line 427
    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v2, v2, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_3

    .line 428
    iget-object v2, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v2, v2, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/k;

    iput-object v1, v2, Landroid/support/v4/app/k;->s:Ljava/lang/String;

    :cond_3
    throw v0

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method final c()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 325
    :goto_0
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  Destroying: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/z;->l:Z

    .line 327
    iget-boolean v0, p0, Landroid/support/v4/app/z;->f:Z

    .line 328
    iput-boolean v4, p0, Landroid/support/v4/app/z;->f:Z

    .line 329
    iget-object v1, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/app/x;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v4/app/z;->e:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 330
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  Reseting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_7

    .line 333
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->s:Ljava/lang/String;

    .line 334
    iget-object v1, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v1, v1, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/k;

    const-string/jumbo v3, "onLoaderReset"

    iput-object v3, v1, Landroid/support/v4/app/k;->s:Ljava/lang/String;

    move-object v1, v0

    .line 337
    :goto_1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/app/x;

    iget-object v3, p0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    invoke-interface {v0}, Landroid/support/v4/app/x;->A_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/k;

    iput-object v1, v0, Landroid/support/v4/app/k;->s:Ljava/lang/String;

    .line 344
    :cond_2
    iput-object v2, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/app/x;

    .line 345
    iput-object v2, p0, Landroid/support/v4/app/z;->g:Ljava/lang/Object;

    .line 346
    iput-boolean v4, p0, Landroid/support/v4/app/z;->e:Z

    .line 347
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    if-eqz v0, :cond_4

    .line 348
    iget-boolean v0, p0, Landroid/support/v4/app/z;->m:Z

    if-eqz v0, :cond_3

    .line 349
    iput-boolean v4, p0, Landroid/support/v4/app/z;->m:Z

    .line 350
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    invoke-virtual {v0, p0}, Landroid/support/v4/a/d;->a(Landroid/support/v4/a/f;)V

    .line 352
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    invoke-virtual {v0}, Landroid/support/v4/a/d;->n()V

    .line 354
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/z;->n:Landroid/support/v4/app/z;

    if-eqz v0, :cond_6

    .line 355
    iget-object p0, p0, Landroid/support/v4/app/z;->n:Landroid/support/v4/app/z;

    goto/16 :goto_0

    .line 339
    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v2, v2, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_5

    .line 340
    iget-object v2, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v2, v2, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/k;

    iput-object v1, v2, Landroid/support/v4/app/k;->s:Ljava/lang/String;

    :cond_5
    throw v0

    .line 357
    :cond_6
    return-void

    :cond_7
    move-object v1, v2

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 438
    const-string/jumbo v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget v1, p0, Landroid/support/v4/app/z;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget-object v1, p0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    invoke-static {v1, v0}, Landroid/support/v4/c/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 444
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
