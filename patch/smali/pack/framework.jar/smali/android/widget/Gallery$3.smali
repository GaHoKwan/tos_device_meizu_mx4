.class Landroid/widget/Gallery$3;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Gallery;->setUpChildForMeizu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Gallery;


# direct methods
.method constructor <init>(Landroid/widget/Gallery;)V
    .locals 0

    .prologue
    .line 2975
    iput-object p1, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const v10, 0x1020001

    const/4 v9, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    .line 2979
    iget-object v3, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    iget v3, v3, Landroid/widget/Gallery;->mDragAndDropPosition:I

    if-ne v3, v9, :cond_0

    move v3, v4

    .line 3058
    :goto_0
    return v3

    .line 2981
    :cond_0
    const/4 v1, 0x0

    .line 2982
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    move v3, v5

    .line 3058
    goto :goto_0

    :sswitch_0
    move v3, v5

    .line 2985
    goto :goto_0

    :sswitch_1
    move v3, v5

    .line 2988
    goto :goto_0

    :sswitch_2
    move v3, v5

    .line 2991
    goto :goto_0

    :sswitch_3
    move v3, v5

    .line 2994
    goto :goto_0

    :sswitch_4
    move v3, v4

    .line 2997
    goto :goto_0

    .line 3000
    :sswitch_5
    iget-object v3, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    iget-object v6, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    iget v6, v6, Landroid/widget/Gallery;->mDragAndDropPosition:I

    iget-object v7, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    iget v7, v7, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v6}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3001
    if-eqz v1, :cond_3

    .line 3002
    instance-of v3, v1, Landroid/widget/Gallery$DragShadowItem;

    if-eqz v3, :cond_5

    move-object v3, v1

    .line 3003
    check-cast v3, Landroid/widget/Gallery$DragShadowItem;

    invoke-interface {v3}, Landroid/widget/Gallery$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v2

    .line 3004
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 3005
    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 3007
    :cond_2
    iget-object v3, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mChangeChildAlphaWhenDragView:Z
    invoke-static {v3}, Landroid/widget/Gallery;->access$2800(Landroid/widget/Gallery;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3008
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 3014
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    :goto_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3015
    iget-object v3, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    iget-object v4, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    iget v4, v4, Landroid/widget/Gallery;->mDragAndDropPosition:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/Gallery;->setItemChecked(IZ)V

    .line 3024
    :cond_4
    :goto_3
    iget-object v3, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    iput v9, v3, Landroid/widget/Gallery;->mDragAndDropPosition:I

    .line 3026
    iget-object v3, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v3}, Landroid/widget/Gallery;->getCheckedItemCount()I

    move-result v3

    if-gtz v3, :cond_1

    iget-object v3, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;
    invoke-static {v3}, Landroid/widget/Gallery;->access$1500(Landroid/widget/Gallery;)Landroid/view/ActionMode;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3027
    iget-object v3, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;
    invoke-static {v3}, Landroid/widget/Gallery;->access$1500(Landroid/widget/Gallery;)Landroid/view/ActionMode;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 3011
    :cond_5
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 3016
    :cond_6
    if-eqz v1, :cond_4

    .line 3017
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3018
    .local v0, "checkbox":Landroid/view/View;
    if-eqz v0, :cond_7

    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_7

    .line 3019
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "checkbox":Landroid/view/View;
    invoke-interface {v0, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 3021
    :cond_7
    iget-object v3, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    # invokes: Landroid/widget/Gallery;->invalidateViews()V
    invoke-static {v3}, Landroid/widget/Gallery;->access$1700(Landroid/widget/Gallery;)V

    goto :goto_3

    .line 3032
    :sswitch_6
    iget-object v3, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    iget-object v6, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    iget v6, v6, Landroid/widget/Gallery;->mDragAndDropPosition:I

    iget-object v7, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    iget v7, v7, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v6}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3033
    if-eqz v1, :cond_a

    .line 3034
    instance-of v3, v1, Landroid/widget/Gallery$DragShadowItem;

    if-eqz v3, :cond_c

    move-object v3, v1

    .line 3035
    check-cast v3, Landroid/widget/Gallery$DragShadowItem;

    invoke-interface {v3}, Landroid/widget/Gallery$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v2

    .line 3036
    .restart local v2    # "v":Landroid/view/View;
    if-eqz v2, :cond_8

    .line 3037
    invoke-virtual {v2, v8}, Landroid/view/View;->setAlpha(F)V

    .line 3039
    :cond_8
    iget-object v3, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mChangeChildAlphaWhenDragView:Z
    invoke-static {v3}, Landroid/widget/Gallery;->access$2800(Landroid/widget/Gallery;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3040
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 3046
    .end local v2    # "v":Landroid/view/View;
    :cond_9
    :goto_4
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3047
    .restart local v0    # "checkbox":Landroid/view/View;
    if-eqz v0, :cond_a

    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_a

    .line 3048
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "checkbox":Landroid/view/View;
    invoke-interface {v0, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 3051
    :cond_a
    iget-object v3, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v3}, Landroid/widget/Gallery;->requestLayout()V

    .line 3053
    iget-object v3, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v3}, Landroid/widget/Gallery;->getCheckedItemCount()I

    move-result v3

    if-gtz v3, :cond_b

    iget-object v3, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;
    invoke-static {v3}, Landroid/widget/Gallery;->access$1500(Landroid/widget/Gallery;)Landroid/view/ActionMode;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 3054
    iget-object v3, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    # getter for: Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;
    invoke-static {v3}, Landroid/widget/Gallery;->access$1500(Landroid/widget/Gallery;)Landroid/view/ActionMode;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    .line 3055
    :cond_b
    iget-object v3, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    iput v9, v3, Landroid/widget/Gallery;->mDragAndDropPosition:I

    goto/16 :goto_1

    .line 3043
    :cond_c
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    .line 2982
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x64 -> :sswitch_6
    .end sparse-switch
.end method
