.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final buttons:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Button;",
            ">;"
        }
    .end annotation
.end field

.field private checkedButtons:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Button;",
            ">;"
        }
    .end annotation
.end field

.field private lastChecked:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

.field private maxCheckCount:I

.field private minCheckCount:I

.field private uncheckLast:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    .line 27
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    .line 28
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->maxCheckCount:I

    .line 29
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->uncheckLast:Z

    .line 33
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 34
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    .line 27
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    .line 28
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->maxCheckCount:I

    .line 29
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->uncheckLast:Z

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 38
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->add([Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V

    .line 39
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 40
    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 43
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "button cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->buttonGroup:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    .line 45
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    if-ge v0, v3, :cond_3

    :cond_1
    move v0, v2

    .line 46
    :goto_0
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    .line 47
    iput-object p0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->buttonGroup:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    .line 48
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 49
    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    .line 50
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 45
    goto :goto_0
.end method

.method public varargs add([Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .locals 3
    .parameter

    .prologue
    .line 53
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "buttons cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 55
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->add(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method protected canCheck(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;Z)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 85
    iget-boolean v2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    if-ne v2, p2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    if-nez p2, :cond_2

    .line 89
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    if-le v2, v3, :cond_0

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    :goto_1
    move v0, v1

    .line 106
    goto :goto_0

    .line 93
    :cond_2
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->maxCheckCount:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->maxCheckCount:I

    if-lt v2, v3, :cond_3

    .line 94
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->uncheckLast:Z

    if-eqz v2, :cond_0

    .line 95
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 96
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 97
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->lastChecked:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    .line 98
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 103
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->lastChecked:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    goto :goto_1
.end method

.method public getAllChecked()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Button;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getButtons()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Button;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getChecked()Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .line 123
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "button cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->buttonGroup:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 62
    return-void
.end method

.method public varargs remove([Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .locals 3
    .parameter

    .prologue
    .line 65
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "buttons cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 67
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method

.method public setChecked(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 72
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .line 75
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    .line 80
    :cond_1
    return-void

    .line 73
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public setMaxCheckCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->maxCheckCount:I

    .line 142
    return-void
.end method

.method public setMinCheckCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 137
    return-void
.end method

.method public setUncheckLast(Z)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->uncheckLast:Z

    .line 149
    return-void
.end method

.method public uncheckAll()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 111
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 112
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    iget v4, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .line 115
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    .line 113
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 117
    :cond_0
    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 118
    return-void
.end method
