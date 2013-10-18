.class final Landroid/support/v4/app/y;
.super Landroid/support/v4/app/w;
.source "SourceFile"


# static fields
.field static a:Z


# instance fields
.field final b:Landroid/support/v4/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/c/d",
            "<",
            "Landroid/support/v4/app/z;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/support/v4/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/c/d",
            "<",
            "Landroid/support/v4/app/z;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/support/v4/app/FragmentActivity;

.field e:Z

.field f:Z

.field g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/y;->a:Z

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 475
    invoke-direct {p0}, Landroid/support/v4/app/w;-><init>()V

    .line 194
    new-instance v0, Landroid/support/v4/c/d;

    invoke-direct {v0}, Landroid/support/v4/c/d;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    .line 200
    new-instance v0, Landroid/support/v4/c/d;

    invoke-direct {v0}, Landroid/support/v4/c/d;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/c/d;

    .line 476
    iput-object p1, p0, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    .line 477
    iput-boolean p2, p0, Landroid/support/v4/app/y;->e:Z

    .line 478
    return-void
.end method

.method private c(Landroid/support/v4/app/x;)Landroid/support/v4/app/z;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/x",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v4/app/z;"
        }
    .end annotation

    .prologue
    .line 486
    new-instance v0, Landroid/support/v4/app/z;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/app/z;-><init>(Landroid/support/v4/app/y;Landroid/support/v4/app/x;)V

    .line 487
    invoke-interface {p1}, Landroid/support/v4/app/x;->a()Landroid/support/v4/a/d;

    move-result-object v1

    .line 488
    iput-object v1, v0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    .line 489
    return-object v0
.end method

.method private d(Landroid/support/v4/app/x;)Landroid/support/v4/app/z;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/x",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v4/app/z;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 495
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/support/v4/app/y;->g:Z

    .line 496
    invoke-direct {p0, p1}, Landroid/support/v4/app/y;->c(Landroid/support/v4/app/x;)Landroid/support/v4/app/z;

    move-result-object v0

    .line 497
    invoke-virtual {p0, v0}, Landroid/support/v4/app/y;->a(Landroid/support/v4/app/z;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    iput-boolean v1, p0, Landroid/support/v4/app/y;->g:Z

    return-object v0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroid/support/v4/app/y;->g:Z

    throw v0
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/x;)Landroid/support/v4/a/d;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/app/x",
            "<TD;>;)",
            "Landroid/support/v4/a/d",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 540
    iget-boolean v0, p0, Landroid/support/v4/app/y;->g:Z

    if-eqz v0, :cond_0

    .line 541
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    .line 546
    sget-boolean v1, Landroid/support/v4/app/y;->a:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "initLoader in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": args="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 548
    :cond_1
    if-nez v0, :cond_4

    .line 550
    invoke-direct {p0, p1}, Landroid/support/v4/app/y;->d(Landroid/support/v4/app/x;)Landroid/support/v4/app/z;

    move-result-object v0

    .line 551
    sget-boolean v1, Landroid/support/v4/app/y;->a:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "  Created new loader "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    :cond_2
    :goto_0
    iget-boolean v1, v0, Landroid/support/v4/app/z;->e:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/support/v4/app/y;->e:Z

    if-eqz v1, :cond_3

    .line 559
    iget-object v1, v0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    iget-object v2, v0, Landroid/support/v4/app/z;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/z;->b(Landroid/support/v4/a/d;Ljava/lang/Object;)V

    .line 562
    :cond_3
    iget-object v0, v0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    return-object v0

    .line 553
    :cond_4
    sget-boolean v1, Landroid/support/v4/app/y;->a:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "  Re-using existing loader "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    :cond_5
    iput-object p1, v0, Landroid/support/v4/app/z;->c:Landroid/support/v4/app/x;

    goto :goto_0
.end method

.method final a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    .line 482
    return-void
.end method

.method final a(Landroid/support/v4/app/z;)V
    .locals 2
    .parameter

    .prologue
    .line 505
    iget-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    iget v1, p1, Landroid/support/v4/app/z;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/c/d;->a(ILjava/lang/Object;)V

    .line 506
    iget-boolean v0, p0, Landroid/support/v4/app/y;->e:Z

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p1}, Landroid/support/v4/app/z;->a()V

    .line 512
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 797
    iget-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 798
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Active Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 800
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 801
    iget-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    .line 802
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    invoke-virtual {v4, v1}, Landroid/support/v4/c/d;->d(I)I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 803
    const-string/jumbo v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/z;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/z;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 800
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 807
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 808
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Inactive Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 810
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 811
    iget-object v0, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/c/d;

    invoke-virtual {v0, v2}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    .line 812
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/c/d;

    invoke-virtual {v3, v2}, Landroid/support/v4/c/d;->d(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 813
    const-string/jumbo v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/z;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/z;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 810
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 817
    :cond_1
    return-void
.end method

.method public final b(Landroid/support/v4/app/x;)Landroid/support/v4/a/d;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/app/x",
            "<TD;>;)",
            "Landroid/support/v4/a/d",
            "<TD;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 590
    iget-boolean v0, p0, Landroid/support/v4/app/y;->g:Z

    if-eqz v0, :cond_0

    .line 591
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    invoke-virtual {v0, v4}, Landroid/support/v4/c/d;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    .line 595
    sget-boolean v1, Landroid/support/v4/app/y;->a:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "restartLoader in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": args="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 596
    :cond_1
    if-eqz v0, :cond_4

    .line 597
    iget-object v1, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/c/d;

    invoke-virtual {v1, v4}, Landroid/support/v4/c/d;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/z;

    .line 598
    if-eqz v1, :cond_9

    .line 599
    iget-boolean v2, v0, Landroid/support/v4/app/z;->e:Z

    if-eqz v2, :cond_5

    .line 604
    sget-boolean v2, Landroid/support/v4/app/y;->a:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "  Removing last inactive loader: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 605
    :cond_2
    iput-boolean v4, v1, Landroid/support/v4/app/z;->f:Z

    .line 606
    invoke-virtual {v1}, Landroid/support/v4/app/z;->c()V

    .line 638
    :cond_3
    :goto_0
    iget-object v1, v0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    invoke-virtual {v1}, Landroid/support/v4/a/d;->m()V

    .line 639
    iget-object v1, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/c/d;

    invoke-virtual {v1, v4, v0}, Landroid/support/v4/c/d;->a(ILjava/lang/Object;)V

    .line 643
    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Landroid/support/v4/app/y;->d(Landroid/support/v4/app/x;)Landroid/support/v4/app/z;

    move-result-object v0

    .line 644
    iget-object v0, v0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    :goto_2
    return-object v0

    .line 612
    :cond_5
    iget-boolean v1, v0, Landroid/support/v4/app/z;->h:Z

    if-nez v1, :cond_6

    .line 616
    sget-boolean v1, Landroid/support/v4/app/y;->a:Z

    .line 617
    iget-object v1, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    invoke-virtual {v1, v4, v3}, Landroid/support/v4/c/d;->a(ILjava/lang/Object;)V

    .line 618
    invoke-virtual {v0}, Landroid/support/v4/app/z;->c()V

    goto :goto_1

    .line 623
    :cond_6
    iget-object v1, v0, Landroid/support/v4/app/z;->n:Landroid/support/v4/app/z;

    if-eqz v1, :cond_8

    .line 624
    sget-boolean v1, Landroid/support/v4/app/y;->a:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "  Removing pending loader: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/support/v4/app/z;->n:Landroid/support/v4/app/z;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 625
    :cond_7
    iget-object v1, v0, Landroid/support/v4/app/z;->n:Landroid/support/v4/app/z;

    invoke-virtual {v1}, Landroid/support/v4/app/z;->c()V

    .line 626
    iput-object v3, v0, Landroid/support/v4/app/z;->n:Landroid/support/v4/app/z;

    .line 628
    :cond_8
    sget-boolean v1, Landroid/support/v4/app/y;->a:Z

    .line 629
    invoke-direct {p0, p1}, Landroid/support/v4/app/y;->c(Landroid/support/v4/app/x;)Landroid/support/v4/app/z;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/app/z;->n:Landroid/support/v4/app/z;

    .line 631
    iget-object v0, v0, Landroid/support/v4/app/z;->n:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    goto :goto_2

    .line 637
    :cond_9
    sget-boolean v1, Landroid/support/v4/app/y;->a:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "  Making last loader inactive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public final b()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 821
    .line 822
    iget-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I

    move-result v4

    move v2, v1

    move v3, v1

    .line 823
    :goto_0
    if-ge v2, v4, :cond_1

    .line 824
    iget-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    invoke-virtual {v0, v2}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    .line 825
    iget-boolean v5, v0, Landroid/support/v4/app/z;->h:Z

    if-eqz v5, :cond_0

    iget-boolean v0, v0, Landroid/support/v4/app/z;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v3, v0

    .line 823
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 825
    goto :goto_1

    .line 827
    :cond_1
    return v3
.end method

.method final c()V
    .locals 4

    .prologue
    .line 698
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Starting in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 699
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/y;->e:Z

    if-eqz v0, :cond_2

    .line 700
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 702
    const-string/jumbo v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Called doStart when already started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    :cond_1
    return-void

    .line 706
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/y;->e:Z

    .line 710
    iget-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 711
    iget-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->a()V

    .line 710
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method final d()V
    .locals 4

    .prologue
    .line 716
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Stopping in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 717
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/y;->e:Z

    if-nez v0, :cond_1

    .line 718
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 720
    const-string/jumbo v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Called doStop when not started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 728
    :goto_0
    return-void

    .line 724
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 725
    iget-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->b()V

    .line 724
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 727
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/y;->e:Z

    goto :goto_0
.end method

.method final e()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 731
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Retaining in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 732
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/y;->e:Z

    if-nez v0, :cond_2

    .line 733
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 735
    const-string/jumbo v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Called doRetain when not started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 744
    :cond_1
    return-void

    .line 739
    :cond_2
    iput-boolean v5, p0, Landroid/support/v4/app/y;->f:Z

    .line 740
    iput-boolean v4, p0, Landroid/support/v4/app/y;->e:Z

    .line 741
    iget-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 742
    iget-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    sget-boolean v2, Landroid/support/v4/app/y;->a:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "  Retaining: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    iput-boolean v5, v0, Landroid/support/v4/app/z;->i:Z

    iget-boolean v2, v0, Landroid/support/v4/app/z;->h:Z

    iput-boolean v2, v0, Landroid/support/v4/app/z;->j:Z

    iput-boolean v4, v0, Landroid/support/v4/app/z;->h:Z

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v4/app/z;->c:Landroid/support/v4/app/x;

    .line 741
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method final f()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 747
    iget-boolean v0, p0, Landroid/support/v4/app/y;->f:Z

    if-eqz v0, :cond_4

    .line 748
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Finished Retaining in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 750
    :cond_0
    iput-boolean v4, p0, Landroid/support/v4/app/y;->f:Z

    .line 751
    iget-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_4

    .line 752
    iget-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    iget-boolean v2, v0, Landroid/support/v4/app/z;->i:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Landroid/support/v4/app/y;->a:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "  Finished Retaining: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    iput-boolean v4, v0, Landroid/support/v4/app/z;->i:Z

    iget-boolean v2, v0, Landroid/support/v4/app/z;->h:Z

    iget-boolean v3, v0, Landroid/support/v4/app/z;->j:Z

    if-eq v2, v3, :cond_2

    iget-boolean v2, v0, Landroid/support/v4/app/z;->h:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/z;->b()V

    :cond_2
    iget-boolean v2, v0, Landroid/support/v4/app/z;->h:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Landroid/support/v4/app/z;->e:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Landroid/support/v4/app/z;->k:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    iget-object v3, v0, Landroid/support/v4/app/z;->g:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/z;->b(Landroid/support/v4/a/d;Ljava/lang/Object;)V

    .line 751
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 755
    :cond_4
    return-void
.end method

.method final g()V
    .locals 3

    .prologue
    .line 758
    iget-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 759
    iget-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/z;->k:Z

    .line 758
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 761
    :cond_0
    return-void
.end method

.method final h()V
    .locals 4

    .prologue
    .line 764
    iget-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 765
    iget-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    iget-boolean v2, v0, Landroid/support/v4/app/z;->h:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/app/z;->k:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/app/z;->k:Z

    iget-boolean v2, v0, Landroid/support/v4/app/z;->e:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/support/v4/app/z;->d:Landroid/support/v4/a/d;

    iget-object v3, v0, Landroid/support/v4/app/z;->g:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/z;->b(Landroid/support/v4/a/d;Ljava/lang/Object;)V

    .line 764
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 767
    :cond_1
    return-void
.end method

.method final i()V
    .locals 2

    .prologue
    .line 770
    iget-boolean v0, p0, Landroid/support/v4/app/y;->f:Z

    if-nez v0, :cond_1

    .line 771
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Destroying Active in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 772
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 773
    iget-object v0, p0, Landroid/support/v4/app/y;->b:Landroid/support/v4/c/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->c()V

    .line 772
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 777
    :cond_1
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Destroying Inactive in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 778
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    .line 779
    iget-object v0, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/c/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->c()V

    .line 778
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 781
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->b()V

    .line 782
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 787
    const-string/jumbo v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    iget-object v1, p0, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/support/v4/c/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 791
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
